package com.p2p.controller.front;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 * 开发人:杨嘉辉
 * 2017-11-13
 * 此conteroller是访问前台页面的
 * */
@Controller
public class FrontController {
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
	 * 我要投资页面的conteroller
	 * */
	@RequestMapping(value="/toinvest")
	public String tofroninvest(){
		return "views/front/invest";
	}
	
	/**
	 * 安全保障页面的conteroller
	 * */
	@RequestMapping(value="/toguarantee")
	public String tofronguarantee() {
		return "views/front/guarantee";
	}
	
	/**
	 * 关于我们页面的conteroller
	 * */
	@RequestMapping(value="/toabout")
	public String tofronabout() {
		return "views/front/about";
	}
	
	/**
	 * 我的账户页面的conteroller
	 * */
	@RequestMapping(value="/tousercenter")
	public String tofronusercenter() {
		return "views/front/user/usercenter";
	}
	
	/**
	 * 活动专区页面的conteroller
	 * */
	@RequestMapping(value="/toactivity")
	public String tofronactivity() {
		return "views/front/activity";
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
		return "views/front/user/fransfer";
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
		return "views/front/message/sitmsg";
	}
	
	/**
	 *通知设置页面的conteroller
	 * */
	@RequestMapping(value="/tosetmsg")
	public String tosetmsg() {
		return "views/front/message/setmsg";
	}
	
	/**
	 *业务特色页面的conteroller
	 * */
	@RequestMapping(value="/totures")
	public String totures() {
		return "views/front/aboutwe/feartures";
	}
	
	/**
	 *大事记页面的conteroller
	 * */
	@RequestMapping(value="/tobilia")
	public String tobilia() {
		return "views/front/aboutwe/memorabilia";
	}
}
