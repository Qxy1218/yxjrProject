package com.p2p.controller.front;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.p2p.pojo.Fabiao;
import com.p2p.service.front.FabiaoService;
import com.p2p.util.DateUtils;

@Controller
public class FabiaoController {
	
	@Resource(name="fabiaoServiceImpl")
	private FabiaoService fabiaoService;
	
	@RequestMapping("listfabiaos")
	public String listfabiao(Model model) throws ParseException {
		//取当前时间	
		Date date=new Date();
		DateFormat format1 =new SimpleDateFormat("yyyy-MM-dd");
		String time=format1.format(date);
		SimpleDateFormat format2 = new SimpleDateFormat("yyyy-MM-dd");
		Date date3 = format2.parse(time);
		List<Fabiao> fabiaolist = fabiaoService.getAllModel();
		List<Fabiao> fabiaolists = new ArrayList<Fabiao>(); 
		for(int i=0;i<fabiaolist.size();i++) {
			Fabiao fabiao = fabiaolist.get(i);
			fabiao.setFid(fabiaolist.get(i).getFid());
			fabiao.setFtitle(fabiaolist.get(i).getFtitle());
			fabiao.setUid(fabiaolist.get(i).getUid());
			fabiao.setFcode(fabiaolist.get(i).getFcode());
			fabiao.setFtype(fabiaolist.get(i).getFtype());
			fabiao.setFpart(fabiaolist.get(i).getFpart());
			fabiao.setFroe(fabiaolist.get(i).getFroe());
			fabiao.setFincrease(fabiaolist.get(i).getFincrease());
			fabiao.setFcontent(fabiaolist.get(i).getFcontent());
			fabiao.setFsituation(fabiaolist.get(i).getFsituation());
			fabiao.setFopinion(fabiaolist.get(i).getFopinion());
			fabiao.setFmoney(fabiaolist.get(i).getFmoney());
			fabiao.setFendmoney(fabiaolist.get(i).getFendmoney());
			fabiao.setFendtime(fabiaolist.get(i).getFendtime());
			fabiao.setFminmoney(fabiaolist.get(i).getFminmoney());
			fabiao.setFmaxmoney(fabiaolist.get(i).getFmaxmoney());
			fabiao.setFrate(fabiaolist.get(i).getFrate());
			fabiao.setFimage(fabiaolist.get(i).getFimage());
			fabiao.setForderimg(fabiaolist.get(i).getForderimg());
			fabiao.setFcontract(fabiaolist.get(i).getFcontract());
			fabiao.setFbidstatus(fabiaolist.get(i).getFbidstatus());
			fabiao.setFstatus(fabiaolist.get(i).getFstatus());
			fabiao.setFsecurity(fabiaolist.get(i).getFsecurity());
			fabiao.setFprocedures(fabiaolist.get(i).getFprocedures());
			fabiao.setFrepayment(fabiaolist.get(i).getFrepayment());
			fabiao.setFstrattime(fabiaolist.get(i).getFstrattime());
			
			//取结束时间
			String endtime = fabiaolist.get(i).getFendtime();
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			Date date2 = format.parse(endtime);
			//取两个时间的天数 
			int aa = DateUtils.differentDays(date3, date2);
			fabiao.setRematime(aa);
			fabiaolists.add(fabiao);
		}
		model.addAttribute("fabiaolist", fabiaolists);
		
	
			
	
		
		
		
		return "/views/front/invest";
	}
}
