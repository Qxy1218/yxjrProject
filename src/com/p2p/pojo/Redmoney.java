package com.p2p.pojo;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.TableField;

/**
 * 红包表
 * 2017-11-14
 * 操作人:朱勇峰
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
	
	@TableField("r_endtime")
	private String rendtime; //结束时间
	
	@TableField("r_money")
	private double rmoney; //金钱
	
	
	@Override
	public String toString() {
		return "Redmoney [rid=" + rid + ", uid=" + uid + ", rendtime=" + rendtime + ", rmoney=" + rmoney + "]";
	}
	
	
	public Redmoney() {
		super();
	}


	public Redmoney(Integer rid, Integer uid, String rendtime, double rmoney) {
		super();
		this.rid = rid;
		this.uid = uid;
		this.rendtime = rendtime;
		this.rmoney = rmoney;
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
	public String getRendtime() {
		return rendtime;
	}
	public void setRendtime(String rendtime) {
		this.rendtime = rendtime;
	}
	public double getRmoney() {
		return rmoney;
	}
	public void setRmoney(double rmoney) {
		this.rmoney = rmoney;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
}
