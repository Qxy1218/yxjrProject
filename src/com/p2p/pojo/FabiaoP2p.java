package com.p2p.pojo;

/**
 * 发标表
 * 操作人：邱雪云
 * 操作时间：2018-01-16
 * */

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.TableField;

public class FabiaoP2p implements Serializable{
	private Integer fssuid;
	private String fstitle;
	private String fsorder;
	private double fsmoney;
	private String fstime;
	private Integer fsstate;
	private String fsip;
	
	private Users user;
	public FabiaoP2p() {}
	
	public FabiaoP2p( Integer fssuid, String fstitle, String fsorder, double fsmoney, String fstime,
			Integer fsstate, String fsip, Users user) {
		super();
		this.fssuid = fssuid;
		this.fstitle = fstitle;
		this.fsorder = fsorder;
		this.fsmoney = fsmoney;
		this.fstime = fstime;
		this.fsstate = fsstate;
		this.fsip = fsip;
		this.user = user;
	}

	@Override
	public String toString() {
		return "Fabiao [ fssuid=" + fssuid + ", fstitle=" + fstitle + ", fsorder=" + fsorder
				+ ", fsmoney=" + fsmoney + ", fstime=" + fstime + ", fsstate=" + fsstate + ", fsip=" + fsip + ", user="
				+ user + "]";
	}

	public Integer getFssuid() {
		return fssuid;
	}
	public void setFssuid(Integer fssuid) {
		this.fssuid = fssuid;
	}
	public String getFstitle() {
		return fstitle;
	}
	public void setFstitle(String fstitle) {
		this.fstitle = fstitle;
	}
	public String getFsorder() {
		return fsorder;
	}
	public void setFsorder(String fsorder) {
		this.fsorder = fsorder;
	}
	public double getFsmoney() {
		return fsmoney;
	}
	public void setFsmoney(double fsmoney) {
		this.fsmoney = fsmoney;
	}
	public String getFstime() {
		return fstime;
	}
	public void setFstime(String fstime) {
		this.fstime = fstime;
	}
	public Integer getFsstate() {
		return fsstate;
	}
	public void setFsstate(Integer fsstate) {
		this.fsstate = fsstate;
	}
	public String getFsip() {
		return fsip;
	}
	public void setFsip(String fsip) {
		this.fsip = fsip;
	}

	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}
	
	
}
