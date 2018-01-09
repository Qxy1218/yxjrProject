package com.p2p.controller.front;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.p2p.pojo.User;
import com.p2p.pojo.Userbackcard;
import com.p2p.pojo.Userinfo;
import com.p2p.pojo.Withdrawals;
import com.p2p.pojo.WithdrawalsServiceP2p;
import com.p2p.service.back.WithdrawalsService;
import com.p2p.service.front.IUserService;
import com.p2p.service.front.UserbackcardService;
import com.p2p.util.SendServiceUtil;

@Controller
@RequestMapping("front/withdrawals")
public class WithdrawalsfrontController {

	@Resource(name="withdrawalsServiceImpl")
	private WithdrawalsService withdrawalsService;
	@Resource(name="userbackcardServiceImpl")
	private UserbackcardService userBankcardService;
	@Resource(name="IUserServiceImpl")
	private IUserService userService;
	
	//实现新增
	@RequestMapping(value="insertWithdrawals")
	@ResponseBody
	public int insertWithdrawals(Withdrawals withdrawals,HttpServletRequest request) throws Exception {
		
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		User user=(User)request.getSession().getAttribute("user");
		String wtime=sdf.format(new Date());
		withdrawals.setWstatus(1);
		withdrawals.setUid(user.getUid());
		withdrawals.setWtime(wtime);
		if(withdrawals.getWmoneytowhere()==null|withdrawals.getWmoneytowhere()=="") {
			Userinfo ui=(Userinfo)request.getSession().getAttribute("userinfo");
			Userbackcard ub=new Userbackcard();
			Integer uiid = ui.getUiid();
			ub.setUiid(uiid);
			Userbackcard ubc=userBankcardService.getModel(ub);
			withdrawals.setWmoneytowhere(ubc.getUbbackcardnum());
		}
		
		
		
		WithdrawalsServiceP2p ws=new WithdrawalsServiceP2p();
		ws.setCcard(withdrawals.getWmoneytowhere());
		ws.setCmoney(withdrawals.getWmoney());
		ws.setCnowMoney(withdrawals.getWnowMoney());
		ws.setCstate(withdrawals.getWstatus());
		ws.setCpoundage(withdrawals.getWfee());
		ws.setCtime(withdrawals.getWtime());
		SimpleDateFormat s=new SimpleDateFormat("yyyyMMddHHmmss");
		String time=s.format(new Date());
		String number=user.getUid().toString();
		String orderNumber = time+number;
		ws.setCsuid(user.getUid());
		ws.setCorder(orderNumber);
		
		int count=SendServiceUtil.list(ws, "192.168.90.47:8080/ServiceP2p/withdrawals/add");
		
		if(count==1) {
			user.setUbalance(user.getUbalance()-withdrawals.getWmoney());
			userService.update(user);
			withdrawalsService.addModel(withdrawals);
			request.getSession().setAttribute("user", user);
			
		}
		return count;
	}
	
	//根据银行卡号查找判断是否存在
		@RequestMapping("selectBankcard")
		@ResponseBody
		public int selectBankcard(String wmoneytowhere,HttpServletRequest request) {
			int count=0;
			if(wmoneytowhere.equals(null)|wmoneytowhere.equals("")) {
				return 2;
			}
			Userbackcard userback=new Userbackcard();
			userback.setUbbackcardnum(wmoneytowhere);
			Userbackcard ubc=userBankcardService.selectBackcard(userback);
			if(ubc!=null) {
				Userinfo ui=(Userinfo)request.getSession().getAttribute("userinfo");
				Userbackcard ub=new Userbackcard();
				Integer uiid = ui.getUiid();
				ub.setUiid(uiid);
				Userbackcard ubk=userBankcardService.getModel(ub);
				if(ubk.getUbbackcardnum().equals(ubc.getUbbackcardnum())) {
					count=1;
				}else {
					count=2;
				}
			}
			return count;
		}
}