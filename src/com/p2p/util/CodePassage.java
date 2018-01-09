package com.p2p.util;

import java.math.BigDecimal;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.p2p.pojo.Fabiao;
import com.p2p.service.front.FabiaoService;
/**
 * 操作人:饶磊
 * 操作时间:2017-1-9
 * 一个封装的代码片段
 * */
public class CodePassage {
	/**
	 * @param fabiaoService
	 * 			服务类
	 * @param  type
	 * 			标类型
	 * @return 拼接好的list
	 * */
	public static List<Fabiao> makeList(FabiaoService fabiaoService,String type){
		Date date=new Date();
		DateFormat format1 =new SimpleDateFormat("yyyy-MM-dd");
		String time=format1.format(date);
		SimpleDateFormat format2 = new SimpleDateFormat("yyyy-MM-dd");
		Date date3=null;
		try {
			date3 = format2.parse(time);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		List<Fabiao> acd = fabiaoService.selectByType(type);
		 List<Fabiao> acds = new ArrayList<Fabiao>(); 
			for(int i=0;i<acd.size();i++) {
				Fabiao fabiao = acd.get(i);
				fabiao.setFid(acd.get(i).getFid());
				fabiao.setFtitle(acd.get(i).getFtitle());
				fabiao.setUid(acd.get(i).getUid());
				fabiao.setFcode(acd.get(i).getFcode());
				fabiao.setFtype(acd.get(i).getFtype());
				fabiao.setFpart(acd.get(i).getFpart());
				fabiao.setFroe(acd.get(i).getFroe());
				fabiao.setFincrease(acd.get(i).getFincrease());
				fabiao.setFcontent(acd.get(i).getFcontent());
				fabiao.setFsituation(acd.get(i).getFsituation());
				fabiao.setFopinion(acd.get(i).getFopinion());
				fabiao.setFmoney(acd.get(i).getFmoney());
				fabiao.setFendmoney(acd.get(i).getFendmoney());
				fabiao.setFendtime(acd.get(i).getFendtime());
				fabiao.setFminmoney(acd.get(i).getFminmoney());
				fabiao.setFmaxmoney(acd.get(i).getFmaxmoney());
				fabiao.setFrate(acd.get(i).getFrate());
				fabiao.setFimage(acd.get(i).getFimage());
				fabiao.setForderimg(acd.get(i).getForderimg());
				fabiao.setFcontract(acd.get(i).getFcontract());
				fabiao.setFbidstatus(acd.get(i).getFbidstatus());
				fabiao.setFstatus(acd.get(i).getFstatus());
				fabiao.setFsecurity(acd.get(i).getFsecurity());
				fabiao.setFprocedures(acd.get(i).getFprocedures());
				fabiao.setFrepayment(acd.get(i).getFrepayment());
				
				//取完成率
				 BigDecimal bigcompnrate = fabiao.getFendmoney().divide(fabiao.getFmoney(),10,BigDecimal.ROUND_HALF_DOWN);
				 String compnrate =  ContextUtils.parsePercent(bigcompnrate.toString());
				 fabiao.setCompnrate(compnrate);
				 
				//取结束时间
				String endtime = acd.get(i).getFendtime();
				SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
				Date date2 =null;
				try {
					date2 = format.parse(endtime);
				} catch (ParseException e) {
					e.printStackTrace();
				}
				//取两个时间的天数 
				int aa = DateUtils.differentDays(date3, date2);
				fabiao.setRematime(aa);
				
				//取投资万元收益
				String types = fabiao.getFrepayment();
				double syl = (fabiao.getFroe().add(fabiao.getFincrease())).doubleValue();
				if(types!=null && !types.equals("")) {
					fabiao.setYield(YieldUtil.getYield(fabiao.getFhuanstat(), fabiao.getFhuanend(), syl,10000,type));
				}
				acds.add(fabiao);
			}
		return acds;
	}
}
