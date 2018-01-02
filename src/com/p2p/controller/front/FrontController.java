package com.p2p.controller.front;

import java.math.BigDecimal;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.p2p.pojo.Contact;
import com.p2p.pojo.Fabiao;
import com.p2p.pojo.Setupnatice;
import com.p2p.pojo.User;
import com.p2p.service.back.ContactService;
import com.p2p.service.front.FabiaoService;
import com.p2p.service.front.SetupnaticeService;
import com.p2p.util.ContextUtils;
import com.p2p.util.DateUtils;

/**
 * 开发人:杨嘉辉
 * 2017-11-13
 * 此conteroller是访问前台页面的
 * */
@Controller
public class FrontController {
	
	
	@Resource(name="fabiaoServiceImpl")
	private FabiaoService fabiaoService;
	
	@Resource(name="setupnaticeServiceImpl")
	private SetupnaticeService setupnaticeService;
	
	@Resource(name="contactServiceImpl")
	private ContactService contactService;
	
	
	/**
	 * 头部的conteroller
	 * */
	@RequestMapping(value="/tohead")
	public String toheadIndex() {
		return "views/front/include/head";
	}
	
	/**
	 * 足部的conteroller
	 * */
	@RequestMapping(value="/tofoot")
	public String tofootIndex() {
		return "views/front/include/floot";	
	}
	
	/**
	 * 我要投资页面的conteroller(项目自投)
	 * */
	@RequestMapping(value="/toinvestzt")
	public String tofroninvest(Model model) throws Exception{
		model.addAttribute("pageName", "invset");
		
		//取当前时间	
		Date date=new Date();
		DateFormat format1 =new SimpleDateFormat("yyyy-MM-dd");
		String time=format1.format(date);
		SimpleDateFormat format2 = new SimpleDateFormat("yyyy-MM-dd");
		Date date3 = format2.parse(time);
		
		
		//项目直投
		List<Fabiao> fabiaolist = fabiaoService.selectByType(null);
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
			
			//取完成率
			 BigDecimal bigcompnrate = fabiao.getFendmoney().divide(fabiao.getFmoney(),10,BigDecimal.ROUND_HALF_DOWN);
			 String compnrate =  ContextUtils.parsePercent(bigcompnrate.toString());
			 fabiao.setCompnrate(compnrate);
			 
			//取结束时间
			String endtime = fabiaolist.get(i).getFendtime();
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			Date date2 = format.parse(endtime);
			//取两个时间的天数 
			int aa = DateUtils.differentDays(date3, date2);
			fabiao.setRematime(aa);
			fabiaolists.add(fabiao);
		}

		 //项目直投
		model.addAttribute("fabiaolist", fabiaolists);
		
		return "views/front/investzt";
	}
	
	@RequestMapping("toinvestzq")
	public String toZQ(Model model) throws Exception{
		return "views/front/investzq";
	}
	
	
	//爱车贷
	@RequestMapping("toinvestche")
	public String toACD(Model model) throws Exception{
		
		model.addAttribute("pageName", "invset");
		
		//取当前时间	
		Date date=new Date();
		DateFormat format1 =new SimpleDateFormat("yyyy-MM-dd");
		String time=format1.format(date);
		SimpleDateFormat format2 = new SimpleDateFormat("yyyy-MM-dd");
		Date date3 = format2.parse(time);
			
		
		 List<Fabiao> acd =  fabiaoService.selectByType("爱车贷");
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
				Date date2 = format.parse(endtime);
				//取两个时间的天数 
				int aa = DateUtils.differentDays(date3, date2);
				fabiao.setRematime(aa);
				acds.add(fabiao);
			}
			//爱车贷
			model.addAttribute("fabiaolistsafd", acds);
			return "views/front/investche";
	}
	
	//爱房贷
	@RequestMapping("toinvestfang")
	public String toFANG(Model model) throws Exception{
		model.addAttribute("pageName", "invset");
		
		//取当前时间	
		Date date=new Date();
		DateFormat format1 =new SimpleDateFormat("yyyy-MM-dd");
		String time=format1.format(date);
		SimpleDateFormat format2 = new SimpleDateFormat("yyyy-MM-dd");
		Date date3 = format2.parse(time);
		
		//爱房贷
		 List<Fabiao> afd =  fabiaoService.selectByType("爱房贷");
		 List<Fabiao> afds = new ArrayList<Fabiao>(); 
			for(int i=0;i<afd.size();i++) {
				Fabiao fabiao = afd.get(i);
				fabiao.setFid(afd.get(i).getFid());
				fabiao.setFtitle(afd.get(i).getFtitle());
				fabiao.setUid(afd.get(i).getUid());
				fabiao.setFcode(afd.get(i).getFcode());
				fabiao.setFtype(afd.get(i).getFtype());
				fabiao.setFpart(afd.get(i).getFpart());
				fabiao.setFroe(afd.get(i).getFroe());
				fabiao.setFincrease(afd.get(i).getFincrease());
				fabiao.setFcontent(afd.get(i).getFcontent());
				fabiao.setFsituation(afd.get(i).getFsituation());
				fabiao.setFopinion(afd.get(i).getFopinion());
				fabiao.setFmoney(afd.get(i).getFmoney());
				fabiao.setFendmoney(afd.get(i).getFendmoney());
				fabiao.setFendtime(afd.get(i).getFendtime());
				fabiao.setFminmoney(afd.get(i).getFminmoney());
				fabiao.setFmaxmoney(afd.get(i).getFmaxmoney());
				fabiao.setFrate(afd.get(i).getFrate());
				fabiao.setFimage(afd.get(i).getFimage());
				fabiao.setForderimg(afd.get(i).getForderimg());
				fabiao.setFcontract(afd.get(i).getFcontract());
				fabiao.setFbidstatus(afd.get(i).getFbidstatus());
				fabiao.setFstatus(afd.get(i).getFstatus());
				fabiao.setFsecurity(afd.get(i).getFsecurity());
				fabiao.setFprocedures(afd.get(i).getFprocedures());
				fabiao.setFrepayment(afd.get(i).getFrepayment());
				
				//取完成率
				 BigDecimal bigcompnrate = fabiao.getFendmoney().divide(fabiao.getFmoney(),10,BigDecimal.ROUND_HALF_DOWN);
				 String compnrate =  ContextUtils.parsePercent(bigcompnrate.toString());
				 fabiao.setCompnrate(compnrate);
				 
				//取结束时间
				String endtime = afd.get(i).getFendtime();
				SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
				Date date2 = format.parse(endtime);
				//取两个时间的天数 
				int aa = DateUtils.differentDays(date3, date2);
				fabiao.setRematime(aa);
				afds.add(fabiao);
			}
			//爱房贷
			model.addAttribute("afds", afds);
			return "views/front/investfang";
	}
	
	//消费金融
	@RequestMapping("toinvestjj")
	public String toXF(Model model) throws Exception{
		model.addAttribute("pageName", "invset");
		
		//取当前时间	
		Date date=new Date();
		DateFormat format1 =new SimpleDateFormat("yyyy-MM-dd");
		String time=format1.format(date);
		SimpleDateFormat format2 = new SimpleDateFormat("yyyy-MM-dd");
		Date date3 = format2.parse(time);
		
		 List<Fabiao> xfjj =  fabiaoService.selectByType("消费金融");
		 List<Fabiao> xfjjs = new ArrayList<Fabiao>(); 
			for(int i=0;i<xfjj.size();i++) {
				Fabiao fabiao = xfjj.get(i);
				fabiao.setFid(xfjj.get(i).getFid());
				fabiao.setFtitle(xfjj.get(i).getFtitle());
				fabiao.setUid(xfjj.get(i).getUid());
				fabiao.setFcode(xfjj.get(i).getFcode());
				fabiao.setFtype(xfjj.get(i).getFtype());
				fabiao.setFpart(xfjj.get(i).getFpart());
				fabiao.setFroe(xfjj.get(i).getFroe());
				fabiao.setFincrease(xfjj.get(i).getFincrease());
				fabiao.setFcontent(xfjj.get(i).getFcontent());
				fabiao.setFsituation(xfjj.get(i).getFsituation());
				fabiao.setFopinion(xfjj.get(i).getFopinion());
				fabiao.setFmoney(xfjj.get(i).getFmoney());
				fabiao.setFendmoney(xfjj.get(i).getFendmoney());
				fabiao.setFendtime(xfjj.get(i).getFendtime());
				fabiao.setFminmoney(xfjj.get(i).getFminmoney());
				fabiao.setFmaxmoney(xfjj.get(i).getFmaxmoney());
				fabiao.setFrate(xfjj.get(i).getFrate());
				fabiao.setFimage(xfjj.get(i).getFimage());
				fabiao.setForderimg(xfjj.get(i).getForderimg());
				fabiao.setFcontract(xfjj.get(i).getFcontract());
				fabiao.setFbidstatus(xfjj.get(i).getFbidstatus());
				fabiao.setFstatus(xfjj.get(i).getFstatus());
				fabiao.setFsecurity(xfjj.get(i).getFsecurity());
				fabiao.setFprocedures(xfjj.get(i).getFprocedures());
				fabiao.setFrepayment(xfjj.get(i).getFrepayment());
				
				//取完成率
				 BigDecimal bigcompnrate = fabiao.getFendmoney().divide(fabiao.getFmoney(),10,BigDecimal.ROUND_HALF_DOWN);
				 String compnrate =  ContextUtils.parsePercent(bigcompnrate.toString());
				 fabiao.setCompnrate(compnrate);
				 
				//取结束时间
				String endtime = xfjj.get(i).getFendtime();
				SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
				Date date2 = format.parse(endtime);
				//取两个时间的天数 
				int aa = DateUtils.differentDays(date3, date2);
				fabiao.setRematime(aa);
				xfjjs.add(fabiao);
			}		
			//消费金融
			model.addAttribute("xfjjs", xfjjs);
			return "views/front/investjj";
	}
	
	
	//爱公益
	@RequestMapping("toinvestgy")
	public String toAGY(Model model) throws Exception{
		model.addAttribute("pageName", "invset");
		
		//取当前时间	
		Date date=new Date();
		DateFormat format1 =new SimpleDateFormat("yyyy-MM-dd");
		String time=format1.format(date);
		SimpleDateFormat format2 = new SimpleDateFormat("yyyy-MM-dd");
		Date date3 = format2.parse(time);
	
		
		List<Fabiao> agy =  fabiaoService.selectByType("爱公益");
		List<Fabiao> agys = new ArrayList<Fabiao>(); 
		for(int i=0;i<agy.size();i++) {
			Fabiao fabiao = agy.get(i);
			fabiao.setFid(agy.get(i).getFid());
			fabiao.setFtitle(agy.get(i).getFtitle());
			fabiao.setUid(agy.get(i).getUid());
			fabiao.setFcode(agy.get(i).getFcode());
			fabiao.setFtype(agy.get(i).getFtype());
			fabiao.setFpart(agy.get(i).getFpart());
			fabiao.setFroe(agy.get(i).getFroe());
			fabiao.setFincrease(agy.get(i).getFincrease());
			fabiao.setFcontent(agy.get(i).getFcontent());
			fabiao.setFsituation(agy.get(i).getFsituation());
			fabiao.setFopinion(agy.get(i).getFopinion());
			fabiao.setFmoney(agy.get(i).getFmoney());
			fabiao.setFendmoney(agy.get(i).getFendmoney());
			fabiao.setFendtime(agy.get(i).getFendtime());
			fabiao.setFminmoney(agy.get(i).getFminmoney());
			fabiao.setFmaxmoney(agy.get(i).getFmaxmoney());
			fabiao.setFrate(agy.get(i).getFrate());
			fabiao.setFimage(agy.get(i).getFimage());
			fabiao.setForderimg(agy.get(i).getForderimg());
			fabiao.setFcontract(agy.get(i).getFcontract());
			fabiao.setFbidstatus(agy.get(i).getFbidstatus());
			fabiao.setFstatus(agy.get(i).getFstatus());
			fabiao.setFsecurity(agy.get(i).getFsecurity());
			fabiao.setFprocedures(agy.get(i).getFprocedures());
			fabiao.setFrepayment(agy.get(i).getFrepayment());
			
			//取完成率
			 BigDecimal bigcompnrate = fabiao.getFendmoney().divide(fabiao.getFmoney(),10,BigDecimal.ROUND_HALF_DOWN);
			 String compnrate =  ContextUtils.parsePercent(bigcompnrate.toString());
			 fabiao.setCompnrate(compnrate);
			 
			//取结束时间
			String endtime = agy.get(i).getFendtime();
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			Date date2 = format.parse(endtime);
			//取两个时间的天数 
			int aa = DateUtils.differentDays(date3, date2);
			fabiao.setRematime(aa);
			agys.add(fabiao);
		}
		//爱公益
		model.addAttribute("agys", agys);
		return "views/front/investgy";
	}
	
	/**
	 * 安全保障页面的conteroller
	 * */
	@RequestMapping(value="/toguarantee")
	public ModelAndView tofronguarantee(Model model) {
		ModelAndView mo = new ModelAndView();
		
		model.addAttribute("pageName", "security");
		
		mo.setViewName("views/front/guarantee");
		return mo;
	}
	
	/**
	 * 关于我们页面的conteroller
	 * */
	@RequestMapping(value="/toabout")
	public ModelAndView tofronabout(Model model) {
		ModelAndView mo = new ModelAndView();
		
		model.addAttribute("pageName", "about");
		
		mo.setViewName("views/front/about");
		return mo;
	}
	
	/**
	 * 我的账户页面的conteroller
	 * */
	@RequestMapping(value="/tousercenter")
	public ModelAndView tofronusercenter(Model model) {
		ModelAndView mo = new ModelAndView();
		
		model.addAttribute("pageName", "myinfo");
		
		mo.setViewName("views/front/user/usercenter");
		return mo;
	}
	
	/**
	 * 活动专区页面的conteroller
	 * */
	@RequestMapping(value="/toactivity")
	public ModelAndView tofronactivity(Model model) {
		ModelAndView mo = new ModelAndView();
		
		model.addAttribute("pageName", "activity");
		
		mo.setViewName("views/front/activity");
		return mo;
	}
	
	/**
	 * 成长值中心页面的conteroller
	 * */
	@RequestMapping(value="/togrowth")
	public String tofrongrowth() {
		return "views/front/user/growthcenter";
	}
	
	/**
	 * 投资记录页面的conteroller
	 * */
	@RequestMapping(value="/toinvestrecord")
	public String tofroninvestrecord(){
		return "views/front/user/investrecord";
	}
	
	/**
	 * 回款计划页面的conteroller
	 * */
	@RequestMapping(value="/topayment")
	public String tofronpayment() {
		return "views/front/user/payment";
	}
	
	/**
	 * 债权页面的conteroller
	 * */
	@RequestMapping(value="/totransfer")
	public String tofrontransfer() {
		return "views/front/user/transfer";
	}
	
	/**
	 *邀请好友页面的conteroller
	 * */
	@RequestMapping(value="/toinviting")
	public String toinviting() {
		return "views/front/inviting";
	}
	
	/**
	 *微商资金管理页面的conteroller
	 * */
	@RequestMapping(value="/toopen")
	public String toopen() {
		return "views/front/openbankid";
	}
	
	/**
	 *奖励金流水页面的conteroller
	 * */
	@RequestMapping(value="/toreward")
	public String toreward() {
		return "views/front/management/rewardrecord";
	}
	
	/**
	 *我的红包页面的conteroller
	 * */
	@RequestMapping(value="/toredpack")
	public String toredpack() {
		return "views/front/management/redpacket";
	}
	
	/**
	 *我的加息券页面的conteroller
	 * */
	@RequestMapping(value="/tointerest")
	public String tointerest() {
		return "views/front/management/interestcoupon";
	}
	
	/**
	 *我的钱帮币页面的conteroller
	 * */
	@RequestMapping(value="/tomycoin")
	public String tomycoin() {
		return "views/front/management/mycoin";
	}
	
	/**
	 *站内消息页面的conteroller
	 * */
	@RequestMapping(value="/tomsg")
	public String tomsg() {
		return "views/front/message/sitemsg";
	}
	
	/**
	 *通知设置页面的conteroller
	 * */
	@RequestMapping(value="/tosetmsg")
	public String tosetmsg(HttpSession session,Model model) {
		/**
		 * 从session获取user对象
		 * 如果取得的是空则会跳会首界面
		 * */
		User user = (User)session.getAttribute("user");
		if(user==null) {
			return "redirect:/toindex";
		}
		List<Setupnatice> setupnatice2 = setupnaticeService.getUserSetup(user.getUid());
		model.addAttribute("setupnatice",setupnatice2);
		return "views/front/message/setmsg";
	}
	
	/**
	 *业务特色页面的conteroller
	 * */
	@RequestMapping(value="/totures")
	public String totures() {
		return "views/front/aboutwe/features";
	}
	
	/**
	 *大事记页面的conteroller
	 * */
	@RequestMapping(value="/tobilia")
	public String tobilia() {
		return "views/front/aboutwe/memorabilia";
	}
	
	/**
	 *媒体报道页面的conteroller
	 * */
	@RequestMapping(value="/tocover")
	public String tocover() {
		return "views/front/aboutwe/coverage";
	}
	
	/**
	 *网站公告页面的conteroller
	 * */
	@RequestMapping(value="/tonot")
	public String tonot() {
		
		return "views/front/aboutwe/notice";
	}
	
	/**
	 *管理团队页面的conteroller
	 * */
	@RequestMapping(value="/toteam")
	public String toteam() {
		return "views/front/aboutwe/team";
	}
	
	/**
	 *联系我们页面的conteroller
	 * */
	@RequestMapping(value="/tocon")
	public String tocon(Model model) {
		Contact contact = new Contact();
		//查是否是一的结果
		contact.setCxs(1);
		contact = contactService.getModel(contact);
		if(contact!=null) {
			if(contact.getCwechartimgurl()==null) {
				return null;
			}
			if(contact.getCweboimgurl()==null) {
				return null;
			}
			model.addAttribute("contact",contact);
			return "views/front/aboutwe/contact";
		}else {
			return "views/front/aboutwe/contact";
		}
		
	}
	
	/**
	 *企业理财页面的conteroller 
	 * */
	@RequestMapping(value="/tofinan")
	public String tofinan() {
		return "views/front/financing";
	}
	
	/**
	 *帮助中心页面的conteroller 
	 * */
	@RequestMapping(value="/tohelp")
	public String tohelp() {
		return "views/front/help";
	}
	
	/**
	 *忘记密码页面的conteroller 
	 * */
	@RequestMapping(value="/toforget")
	public String toforget() {
		return "views/front/forget";
	}
	
	/**
	 * 账户设置页面的controller
	 * */
	@RequestMapping(value="/userverify")
	public ModelAndView toUserVerify(Model model) {
		ModelAndView mo = new ModelAndView();
		
		model.addAttribute("pageName", "myinfo");
		
		mo.setViewName("views/front/user/userverify");
		return mo;
	}
	
	/**
	 *忘记密码页面的conteroller 
	 * */
	@RequestMapping(value="/tocode")
	public String tocode() {
		return "views/front/qrcode";
	}
	
	/**
	 * 产品详情页面的conteroller
	 * */
	@RequestMapping(value="/topro")
	public String topro() {
		return "views/front/product";
	}
	
	/**
	 * 体验金页面的conteroller
	 * */
	
	@RequestMapping(value="/togold")
	public String togold() {
		return "views/front/expgold";
	}
}
