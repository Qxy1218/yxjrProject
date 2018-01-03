package com.p2p.pojo;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.TableField;

/**
 * 红包表
 * 2017-11-14
 * 操作人:朱勇峰
 * 
 * 2017-12-18-9点30分
 * 修改：宋泰伟
 * */
public class Redmoney implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@TableField("r_id")
	private Integer rid; //主键
	
	@TableField("u_id")
	private Integer uid; //用户id
	
	@TableField("r_image")
	private String rimage; //红包表图片介绍
	
	@TableField("r_endtime")
	private String rendtime; //结束时间
	
	@TableField("r_stardtime")
	private String rstardtime; //开始时间
	
	@TableField("r_money")
	private double rmoney; //红包金额
	
	private String uiname;

	public Redmoney() {

	}

	public Redmoney(Integer rid, Integer uid, String rimage, String rendtime, String rstardtime, double rmoney,
			String uiname) {
		super();
		this.rid = rid;
		this.uid = uid;
		this.rimage = rimage;
		this.rendtime = rendtime;
		this.rstardtime = rstardtime;
		this.rmoney = rmoney;
		this.uiname = uiname;
	}

	public Integer getRid() {
		return rid;
	}

	public void setRid(Integer rid) {
		this.rid = rid;
	}

	public Integer getUid() {
		return uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public String getRimage() {
		return rimage;
	}

	public void setRimage(String rimage) {
		this.rimage = rimage;
	}

	public String getRendtime() {
		return rendtime;
	}

	public void setRendtime(String rendtime) {
		this.rendtime = rendtime;
	}

	public String getRstardtime() {
		return rstardtime;
	}

	public void setRstardtime(String rstardtime) {
		this.rstardtime = rstardtime;
	}

	public double getRmoney() {
		return rmoney;
	}

	public void setRmoney(double rmoney) {
		this.rmoney = rmoney;
	}

	public String getUiname() {
		return uiname;
	}

	public void setUiname(String uiname) {
		this.uiname = uiname;
	}

	
	
}
