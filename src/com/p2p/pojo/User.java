package com.p2p.pojo;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.TableField;

/**
 * 用户表 user
 * 操作人:周俣帆
 * 2017-11-14
 * */
public class User implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@TableField("u_id")
	private Integer uid; //用户id
	
	@TableField("u_password")
	private String upassword; //用户密码

	@TableField("u_headImg")
	private String uheadImg;  //用户头像
	
	@TableField("u_phone")
	private String uphone;  //电话号码
	
	@TableField("u_loginTime")
	private String uloginTime;//注册时间
	
	@TableField("u_invited")
	private String uinvited; //别人邀请码
	
	@TableField("u_invite")
	private String uinvite; //自己邀请码
	
	@TableField("u_enable")
	private Integer uenable; //是否禁用 0 禁用/1
	
	@TableField("u_isAccountSum")
	private Integer uisAccountSum;//是否领取代金券
	
	@TableField("u_ip")
	private String uip;//ip
	
	
	@TableField("uv_id")
	private String uvid;//代金券
	
	@TableField("u_bonus")
	private String ubonus;//奖励金
	
	@TableField("u_credit")
	private Integer ucredit;//信用额度
	
	@TableField("u_balance")
	private Double ubalance;//余额值
	
	@TableField("u_group")
	private Integer  ugroup;//成长值
	

	@TableField("ul_id")
	private String  ulid;//成长等级id
	
	@TableField("vd_id")
	private Double vdid;//会员积分id
	

	public User() {
	}


	public User(Integer uid, String upassword, String uheadImg, String uphone, String uloginTime, String uinvited,
			String uinvite, Integer uenable, Integer uisAccountSum, String uip, String uvid, String ubonus,
			Integer ucredit, Double ubalance, Integer ugroup, String ulid, Double vdid) {
		super();
		this.uid = uid;
		this.upassword = upassword;
		this.uheadImg = uheadImg;
		this.uphone = uphone;
		this.uloginTime = uloginTime;
		this.uinvited = uinvited;
		this.uinvite = uinvite;
		this.uenable = uenable;
		this.uisAccountSum = uisAccountSum;
		this.uip = uip;
		this.uvid = uvid;
		this.ubonus = ubonus;
		this.ucredit = ucredit;
		this.ubalance = ubalance;
		this.ugroup = ugroup;
		this.ulid = ulid;
		this.vdid = vdid;
	}


	@Override
	public String toString() {
		return "User [uid=" + uid + ", upassword=" + upassword + ", uheadImg=" + uheadImg + ", uphone=" + uphone
				+ ", uloginTime=" + uloginTime + ", uinvited=" + uinvited + ", uinvite=" + uinvite + ", uenable="
				+ uenable + ", uisAccountSum=" + uisAccountSum + ", uip=" + uip + ", uvid=" + uvid + ", ubonus="
				+ ubonus + ", ucredit=" + ucredit + ", ubalance=" + ubalance + ", ugroup=" + ugroup + ", ulid=" + ulid
				+ ", vdid=" + vdid + "]";
	}


	public Integer getUid() {
		return uid;
	}


	public void setUid(Integer uid) {
		this.uid = uid;
	}


	public String getUpassword() {
		return upassword;
	}


	public void setUpassword(String upassword) {
		this.upassword = upassword;
	}


	public String getUheadImg() {
		return uheadImg;
	}


	public void setUheadImg(String uheadImg) {
		this.uheadImg = uheadImg;
	}


	public String getUphone() {
		return uphone;
	}


	public void setUphone(String uphone) {
		this.uphone = uphone;
	}


	public String getUloginTime() {
		return uloginTime;
	}


	public void setUloginTime(String uloginTime) {
		this.uloginTime = uloginTime;
	}


	public String getUinvited() {
		return uinvited;
	}


	public void setUinvited(String uinvited) {
		this.uinvited = uinvited;
	}


	public String getUinvite() {
		return uinvite;
	}


	public void setUinvite(String uinvite) {
		this.uinvite = uinvite;
	}


	public Integer getUenable() {
		return uenable;
	}


	public void setUenable(Integer uenable) {
		this.uenable = uenable;
	}


	public Integer getUisAccountSum() {
		return uisAccountSum;
	}


	public void setUisAccountSum(Integer uisAccountSum) {
		this.uisAccountSum = uisAccountSum;
	}


	public String getUip() {
		return uip;
	}


	public void setUip(String uip) {
		this.uip = uip;
	}


	public String getUvid() {
		return uvid;
	}


	public void setUvid(String uvid) {
		this.uvid = uvid;
	}


	public String getUbonus() {
		return ubonus;
	}


	public void setUbonus(String ubonus) {
		this.ubonus = ubonus;
	}


	public Integer getUcredit() {
		return ucredit;
	}


	public void setUcredit(Integer ucredit) {
		this.ucredit = ucredit;
	}


	public Double getUbalance() {
		return ubalance;
	}


	public void setUbalance(Double ubalance) {
		this.ubalance = ubalance;
	}


	public Integer getUgroup() {
		return ugroup;
	}


	public void setUgroup(Integer ugroup) {
		this.ugroup = ugroup;
	}


	public String getUlid() {
		return ulid;
	}


	public void setUlid(String ulid) {
		this.ulid = ulid;
	}


	public Double getVdid() {
		return vdid;
	}


	public void setVdid(Double vdid) {
		this.vdid = vdid;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}


}
