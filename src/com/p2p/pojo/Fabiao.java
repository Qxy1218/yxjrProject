package com.p2p.pojo;

import java.io.Serializable;
import java.math.BigDecimal;

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
	private BigDecimal froe; //年收益率
	
	@TableField("f_increase")
	private BigDecimal fincrease; //活动加息
	
	@TableField("f_content")
	private String fcontent; //产品概要
	
	@TableField("f_situation")
	private String fsituation; //项目情况
	
	@TableField("f_opinion")
	private String fopinion; //爱钱帮独立意见
	
	@TableField("f_money")
	private BigDecimal fmoney; //投标金额
	
	@TableField("fendmoney")
	private BigDecimal fendmoney; //已投金额

	@TableField("f_endtime")
	private String fendtime; //投标截止时间
	
	@TableField("f_minmoney")
	private BigDecimal fminmoney; //最小投标金额
	
	@TableField("f_maxmoney")
	private BigDecimal fmaxmoney; //最大投标金额
	
	@TableField("f_rate")
	private BigDecimal frate; //收益率

	@TableField("f_image")
	private String fimage; //代表图

	@TableField("f_orderimg")
	private String forderimg; //其他图片(,分开)

	@TableField("f_contract")
	private String fcontract; //合同url

	@TableField("f_bidstatus")
	private Integer fbidstatus; //投标状态 0未满 1已满

	@TableField("f_status")
	private Integer fstatus; //发布状态 0隐藏(默认) 1发布  2满标  3废标 4流标  5废标

	@TableField("f_security")
	private String fsecurity; //担保措施(text)
	
	@TableField("f_procedures")
	private String fprocedures; //手续(,分开)

	@TableField("f_repayment")
	private String frepayment; //还款方式
	
	@TableField("f_securitymea")
	private String fsecuritymea; //担保措施(varchar)
	
	
	private Integer rematime;  //计算剩余时间
	
	private String compnrate;  //完成率
	
	
	
	
	public Fabiao() {
	}




	public Fabiao(Integer fid, String ftitle, Integer uid, String fcode, String ftype, String fpart, BigDecimal froe,
			BigDecimal fincrease, String fcontent, String fsituation, String fopinion, BigDecimal fmoney,
			BigDecimal fendmoney, String fendtime, BigDecimal fminmoney, BigDecimal fmaxmoney, BigDecimal frate,
			String fimage, String forderimg, String fcontract, Integer fbidstatus, Integer fstatus, String fsecurity,
			String fprocedures, String frepayment, String fsecuritymea, Integer rematime, String compnrate) {
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
		this.fsecuritymea = fsecuritymea;
		this.rematime = rematime;
		this.compnrate = compnrate;
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




	public BigDecimal getFroe() {
		return froe;
	}




	public void setFroe(BigDecimal froe) {
		this.froe = froe;
	}




	public BigDecimal getFincrease() {
		return fincrease;
	}




	public void setFincrease(BigDecimal fincrease) {
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




	public BigDecimal getFmoney() {
		return fmoney;
	}




	public void setFmoney(BigDecimal fmoney) {
		this.fmoney = fmoney;
	}




	public BigDecimal getFendmoney() {
		return fendmoney;
	}




	public void setFendmoney(BigDecimal fendmoney) {
		this.fendmoney = fendmoney;
	}




	public String getFendtime() {
		return fendtime;
	}




	public void setFendtime(String fendtime) {
		this.fendtime = fendtime;
	}




	public BigDecimal getFminmoney() {
		return fminmoney;
	}




	public void setFminmoney(BigDecimal fminmoney) {
		this.fminmoney = fminmoney;
	}




	public BigDecimal getFmaxmoney() {
		return fmaxmoney;
	}




	public void setFmaxmoney(BigDecimal fmaxmoney) {
		this.fmaxmoney = fmaxmoney;
	}




	public BigDecimal getFrate() {
		return frate;
	}




	public void setFrate(BigDecimal frate) {
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




	public String getFsecuritymea() {
		return fsecuritymea;
	}




	public void setFsecuritymea(String fsecuritymea) {
		this.fsecuritymea = fsecuritymea;
	}




	public Integer getRematime() {
		return rematime;
	}




	public void setRematime(Integer rematime) {
		this.rematime = rematime;
	}




	public String getCompnrate() {
		return compnrate;
	}




	public void setCompnrate(String compnrate) {
		this.compnrate = compnrate;
	}


	


	
	
}
