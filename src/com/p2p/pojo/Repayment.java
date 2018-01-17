package com.p2p.pojo;

import java.io.Serializable;
import java.math.BigDecimal;

/**
 * 还款表
 * 操作人：邱雪云
 * 操作时间：2018-01-17
 * */

import com.baomidou.mybatisplus.annotations.TableField;

public class Repayment implements Serializable{

	@TableField("rm_id")
	private Integer rmid;	//主键id
	@TableField("f_id")
	private Integer fid;	//发标人id
	@TableField("rm_plan")
	private BigDecimal rmplan;	//计划还款金额
	@TableField("rm_face")
	private BigDecimal rmface;	//实际还款金额
	@TableField("rm_wait")
	private BigDecimal rmwait;	//待还款金额
	@TableField("rm_all")
	private BigDecimal rmall;	//还款总金额
	@TableField("rm_state")
	private Integer rmstate;	//还款状态
	@TableField("rm_style")
	private Integer rmstyle;	//还款类型
	private Fabiao fabiao;
	@Override
	public String toString() {
		return "Repayment [rmid=" + rmid + ", fid=" + fid + ", rmplan=" + rmplan + ", rmface=" + rmface + ", rmwait="
				+ rmwait + ", rmall=" + rmall + ", rmstate=" + rmstate + ", rmstyle=" + rmstyle + ", fabiao=" + fabiao
				+ "]";
	}
	public Repayment(Integer rmid, Integer fid, BigDecimal rmplan, BigDecimal rmface, BigDecimal rmwait,
			BigDecimal rmall, Integer rmstate, Integer rmstyle, Fabiao fabiao) {
		super();
		this.rmid = rmid;
		this.fid = fid;
		this.rmplan = rmplan;
		this.rmface = rmface;
		this.rmwait = rmwait;
		this.rmall = rmall;
		this.rmstate = rmstate;
		this.rmstyle = rmstyle;
		this.fabiao = fabiao;
	}
	public Integer getRmid() {
		return rmid;
	}
	public void setRmid(Integer rmid) {
		this.rmid = rmid;
	}
	public Integer getFid() {
		return fid;
	}
	public void setFid(Integer fid) {
		this.fid = fid;
	}
	public BigDecimal getRmplan() {
		return rmplan;
	}
	public void setRmplan(BigDecimal rmplan) {
		this.rmplan = rmplan;
	}
	public BigDecimal getRmface() {
		return rmface;
	}
	public void setRmface(BigDecimal rmface) {
		this.rmface = rmface;
	}
	public BigDecimal getRmwait() {
		return rmwait;
	}
	public void setRmwait(BigDecimal rmwait) {
		this.rmwait = rmwait;
	}
	public BigDecimal getRmall() {
		return rmall;
	}
	public void setRmall(BigDecimal rmall) {
		this.rmall = rmall;
	}
	public Integer getRmstate() {
		return rmstate;
	}
	public void setRmstate(Integer rmstate) {
		this.rmstate = rmstate;
	}
	public Integer getRmstyle() {
		return rmstyle;
	}
	public void setRmstyle(Integer rmstyle) {
		this.rmstyle = rmstyle;
	}
	public Fabiao getFabiao() {
		return fabiao;
	}
	public void setFabiao(Fabiao fabiao) {
		this.fabiao = fabiao;
	}
}
