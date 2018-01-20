package com.p2p.controller.back;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.p2p.pojo.AuthebDetais;
import com.p2p.pojo.Fabiao;
import com.p2p.pojo.User;
import com.p2p.service.back.AuthebDetaisService;
import com.p2p.service.back.BidService;
import com.p2p.service.back.FabiaobackService;
import com.p2p.service.back.LoanService;
import com.p2p.service.front.IUserService;
import com.p2p.util.DateUtils;

/**
 * 操作人:胡孝玉
 * 操作类型:后台右部分的首页
 *
 */

@RequestMapping(value="backindex")
@Controller
public class IndexController {
	@Resource(name="authebDetaisServiceImpl")
	private AuthebDetaisService authebDetaisService;  //消息
	@Resource(name="bidServiceImpl")
	private BidService bidService;    //投标
	@Resource(name="loanServiceImpl")
	private LoanService loanService;    //借款
	
	@Resource(name="fabiaobackServiceImpl")	
	private FabiaobackService fabiaoService;
	
	//用户
	@Resource(name="IUserServiceImpl")
	private IUserService iUserService;
	
	
	
	/**
	 *  消息,投标、借款金额
	 * */
	@RequestMapping(value="indexall")
	public String indexall(HttpSession session) {
		List<AuthebDetais> authebDetais =authebDetaisService.getAllModel();
		session.setAttribute("audetailsSize", authebDetais.size());
		session.setAttribute("authebDetais", authebDetais);
		
		try {
			String maxLoanTime = loanService.getMaxStartTime();  //最大借款时间
			String minLoanTime = loanService.getMinStartTime();  //最小借款时间
			String maxBidTime = bidService.getMaxStartTime();  //最大投标时间
			String minBidTime = bidService.getMinStartTime();  //最小投标时间
			
			Date maxLTime = DateUtils.ChuDate(maxLoanTime);
			Date minLTime = DateUtils.ChuDate(minLoanTime);
			Date maxBTime = DateUtils.ChuDate(maxBidTime);
			Date minBTime = DateUtils.ChuDate(minBidTime);
			
			Date maxTime = null;
			Date minTime = null;
			if(maxLTime.getTime()<maxBTime.getTime()) {
				maxTime = maxBTime;
			}else {
				maxTime = maxLTime;
			}
			if(minLTime.getTime()<minBTime.getTime()) {
				minTime = minLTime;
			}else {
				minTime = minBTime;
			}
			
			SimpleDateFormat dataTime = new SimpleDateFormat("yyyy-MM-dd");
			//获取两个时间段的每一天
			List<Date> dateList = DateUtils.getEveryDay(minTime, maxTime);
			
			List<Object> dateTimeList = new ArrayList<>();
			List<Object> moneyLoan = new ArrayList<>();
			List<Object> moneyBid = new ArrayList<>();
			for(int i=0;i<dateList.size();i++) {
				dateTimeList.add(dataTime.format(dateList.get(i)));
				//根据每一天查询  投标金额
				List<String> listLoanMoney = loanService.getMoneyByTime(dataTime.format(dateList.get(i)));
				if(listLoanMoney.size()!=0) {
					double loanmoney = 0.00;
					for(int l=0;l<listLoanMoney.size();l++) {
						double getloanmoney = Double.parseDouble(listLoanMoney.get(l));
						loanmoney = loanmoney+getloanmoney;
					}
					moneyLoan.add(loanmoney);
				}else {
					moneyLoan.add(0);
				}
				
				//根据每一天查询  借款金额
				List<String> listBidMoney = bidService.getMoneyByTime(dataTime.format(dateList.get(i)));
				if(listBidMoney.size()!=0) {
					double bidmoney = 0.00;
					for(int b=0;b<listBidMoney.size();b++) {
						double getbidmoney = Double.parseDouble(listBidMoney.get(b));
						bidmoney = bidmoney+getbidmoney;
					}
					moneyBid.add(bidmoney);
				}else {
					moneyBid.add(0);
				}
			}
			
			/**
			 * 统计
			 */
			//得到平台共注册人数
			List<User> allUser =iUserService.getAllModel(); 
			session.setAttribute("allUser",allUser.size());
			
			Fabiao fabiao = new Fabiao();
			fabiao.setFstatus(2);
			BigDecimal allMoneyYiXin = new BigDecimal("0.0");
			BigDecimal MoneyYiXin = new BigDecimal("0.0");
			List<Fabiao> fabiaoList = fabiaoService.getAllModel();
			for (int i = 0; i < fabiaoList.size(); i++) {
				if(fabiaoList.get(i).getFfqqx()!=null){
					if(fabiaoList.get(i).getFfqqx()==1) {
						allMoneyYiXin=allMoneyYiXin.add(MoneyYiXin);
					}
					
				}
			}
			ObjectMapper om = new ObjectMapper();
			//转换成json对象
			String sdateList = om.writeValueAsString(dateTimeList);
			String smoneyLoan = om.writeValueAsString(moneyLoan);
			String smoneyBid = om.writeValueAsString(moneyBid);
			
			session.setAttribute("dateTime", sdateList);
			session.setAttribute("moneyLoan", smoneyLoan);
			session.setAttribute("moneyBid", smoneyBid);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return "views/back/index";
	
	}
	
}
