package com.p2p.pojo;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.TableField;

/**
 * 身份证表
 * 操作人:胡孝玉
 * 
 * ***/

@SuppressWarnings("serial")
public class IdCard implements Serializable{
	
	@TableField("ic_id")
	private  Integer icid;
	
	@TableField("ic_frontUrl")
	private String icfrontUrl; //身份证正面
	
	@TableField("ic_backUrl")
	private String icbackUrl; //身份证背面
	
	@TableField("ic_status")
	private Integer icstatus; //身份证状态 0未审核 1已审核
	
	@TableField("ic_starttime")
	private String icstarttime; //认证时间
	
	public IdCard() {
	}
	
	public IdCard(Integer icid, String icfrontUrl, String icbackUrl, Integer icstatus, String icstarttime) {
		super();
		this.icid = icid;
		this.icfrontUrl = icfrontUrl;
		this.icbackUrl = icbackUrl;
		this.icstatus = icstatus;
		this.icstarttime = icstarttime;
	}

	@Override
	public String toString() {
		return "IdCard [icid=" + icid + ", icfrontUrl=" + icfrontUrl + ", icbackUrl=" + icbackUrl + ", icstatus="
				+ icstatus + ", icstarttime=" + icstarttime + "]";
	}

	public Integer getIcid() {
		return icid;
	}

	public void setIcid(Integer icid) {
		this.icid = icid;
	}

	public String getIcfrontUrl() {
		return icfrontUrl;
	}

	public void setIcfrontUrl(String icfrontUrl) {
		this.icfrontUrl = icfrontUrl;
	}

	public String getIcbackUrl() {
		return icbackUrl;
	}

	public void setIcbackUrl(String icbackUrl) {
		this.icbackUrl = icbackUrl;
	}

	public Integer getIcstatus() {
		return icstatus;
	}

	public void setIcstatus(Integer icstatus) {
		this.icstatus = icstatus;
	}

	public String getIcstarttime() {
		return icstarttime;
	}

	public void setIcstarttime(String icstarttime) {
		this.icstarttime = icstarttime;
	}
	
	
}