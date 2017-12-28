package com.p2p.pojo;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.TableField;

/**
 * 发标表
 * 2017年11月14日09:57:20
 * 操作人：朱勇峰
 * 
 * */

public class Fabiao implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@TableField("f_id")
	private Integer fid; //主键
	
	@TableField("f_title")
	private String ftitle; //标名
	
	@TableField("u_id")
	private Integer uid; //用户id
	
	
	@TableField("f_code")
	private String fcode; //商品编号
	
	
	@TableField("f_type")
	private String ftype; //标种
	
	@TableField("f_part")
	private String fpart; //标的分类(爱车贷,爱房贷等)
	
	
	@TableField("f_roe")
	private Double froe; //年收益率
	
	@TableField("f_increase")
	private Double fincrease; //活动加息
	
	@TableField("f_content")
	private String fcontent; //产品概要
	
	@TableField("f_situation")
	private String fsituation; //项目情况
	
	@TableField("f_opinion")
	private String fopinion; //爱钱帮独立意见
	
	@TableField("f_money")
	private Double fmoney; //投标金额
	
	@TableField("fendmoney")
	private Double fendmoney; //已投金额

	@TableField("f_endtime")
	private String fendtime; //投标截止时间
	
	@TableField("f_minmoney")
	private Double fminmoney; //最小投标金额
	
	@TableField("f_maxmoney")
	private Double fmaxmoney; //最大投标金额
	
	@TableField("f_rate")
	private Double frate; //收益率

	@TableField("f_image")
	private String fimage; //代表图

	@TableField("f_orderimg")
	private String forderimg; //其他图片(,分开)

	@TableField("f_contract")
	private String fcontract; //合同url

	@TableField("f_bidstatus")
	private Integer fbidstatus; //投标状态 0未满 1已满

	@TableField("f_status")
	private Integer fstatus; //发布状态 0隐藏(默认) 1发布

	@TableField("f_security")
	private String fsecurity; //担保措施
	
	@TableField("f_procedures")
	private String fprocedures; //手续(,分开)

	@TableField("f_repayment")
	private String frepayment; //还款方式
	
	public Fabiao() {
	}

	public Fabiao(Integer fid, String ftitle, Integer uid, String fcode, String ftype, String fpart, Double froe,
			Double fincrease, String fcontent, String fsituation, String fopinion, Double fmoney, Double fendmoney,
			String fendtime, Double fminmoney, Double fmaxmoney, Double frate, String fimage, String forderimg,
			String fcontract, Integer fbidstatus, Integer fstatus, String fsecurity, String fprocedures,
			String frepayment) {
		super();
		this.fid = fid;
		this.ftitle = ftitle;
		this.uid = uid;
		this.fcode = fcode;
		this.ftype = ftype;
		this.fpart = fpart;
		this.froe = froe;
		this.fincrease = fincrease;
		this.fcontent = fcontent;
		this.fsituation = fsituation;
		this.fopinion = fopinion;
		this.fmoney = fmoney;
		this.fendmoney = fendmoney;
		this.fendtime = fendtime;
		this.fminmoney = fminmoney;
		this.fmaxmoney = fmaxmoney;
		this.frate = frate;
		this.fimage = fimage;
		this.forderimg = forderimg;
		this.fcontract = fcontract;
		this.fbidstatus = fbidstatus;
		this.fstatus = fstatus;
		this.fsecurity = fsecurity;
		this.fprocedures = fprocedures;
		this.frepayment = frepayment;
	}

	public Integer getFid() {
		return fid;
	}

	public void setFid(Integer fid) {
		this.fid = fid;
	}

	public String getFtitle() {
		return ftitle;
	}

	public void setFtitle(String ftitle) {
		this.ftitle = ftitle;
	}

	public Integer getUid() {
		return uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public String getFcode() {
		return fcode;
	}

	public void setFcode(String fcode) {
		this.fcode = fcode;
	}

	public String getFtype() {
		return ftype;
	}

	public void setFtype(String ftype) {
		this.ftype = ftype;
	}

	public String getFpart() {
		return fpart;
	}

	public void setFpart(String fpart) {
		this.fpart = fpart;
	}

	public Double getFroe() {
		return froe;
	}

	public void setFroe(Double froe) {
		this.froe = froe;
	}

	public Double getFincrease() {
		return fincrease;
	}

	public void setFincrease(Double fincrease) {
		this.fincrease = fincrease;
	}

	public String getFcontent() {
		return fcontent;
	}

	public void setFcontent(String fcontent) {
		this.fcontent = fcontent;
	}

	public String getFsituation() {
		return fsituation;
	}

	public void setFsituation(String fsituation) {
		this.fsituation = fsituation;
	}

	public String getFopinion() {
		return fopinion;
	}

	public void setFopinion(String fopinion) {
		this.fopinion = fopinion;
	}

	public Double getFmoney() {
		return fmoney;
	}

	public void setFmoney(Double fmoney) {
		this.fmoney = fmoney;
	}

	public Double getFendmoney() {
		return fendmoney;
	}

	public void setFendmoney(Double fendmoney) {
		this.fendmoney = fendmoney;
	}

	public String getFendtime() {
		return fendtime;
	}

	public void setFendtime(String fendtime) {
		this.fendtime = fendtime;
	}

	public Double getFminmoney() {
		return fminmoney;
	}

	public void setFminmoney(Double fminmoney) {
		this.fminmoney = fminmoney;
	}

	public Double getFmaxmoney() {
		return fmaxmoney;
	}

	public void setFmaxmoney(Double fmaxmoney) {
		this.fmaxmoney = fmaxmoney;
	}

	public Double getFrate() {
		return frate;
	}

	public void setFrate(Double frate) {
		this.frate = frate;
	}

	public String getFimage() {
		return fimage;
	}

	public void setFimage(String fimage) {
		this.fimage = fimage;
	}

	public String getForderimg() {
		return forderimg;
	}

	public void setForderimg(String forderimg) {
		this.forderimg = forderimg;
	}

	public String getFcontract() {
		return fcontract;
	}

	public void setFcontract(String fcontract) {
		this.fcontract = fcontract;
	}

	public Integer getFbidstatus() {
		return fbidstatus;
	}

	public void setFbidstatus(Integer fbidstatus) {
		this.fbidstatus = fbidstatus;
	}

	public Integer getFstatus() {
		return fstatus;
	}

	public void setFstatus(Integer fstatus) {
		this.fstatus = fstatus;
	}

	public String getFsecurity() {
		return fsecurity;
	}

	public void setFsecurity(String fsecurity) {
		this.fsecurity = fsecurity;
	}

	public String getFprocedures() {
		return fprocedures;
	}

	public void setFprocedures(String fprocedures) {
		this.fprocedures = fprocedures;
	}

	public String getFrepayment() {
		return frepayment;
	}

	public void setFrepayment(String frepayment) {
		this.frepayment = frepayment;
	}
	
}
