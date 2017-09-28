package cn.edu.hebiace.lxy.gpcps.teacherA.pojo;

import java.util.Date;

public class DProject {
	//系统编号
	private Integer xtbh;
	//年度
	private Integer dYear;
	//所属专业
	private Integer dSszy;
	//课题编号
	private Integer ktbh;
	//审核日期
	private Date shrq;
	//签署日期
	private Date qsrq;
	//发放日期
	private Date ffrq;
	//设计目的
	private String sjmd;
	//内容要求
	private String nryq;
	//成果要求
	private String cgyq;
	//参考文献
	private String ckwx;
	//进度安排
	private String jdap;
	//审核意见
	private String shyj;
	public Integer getXtbh() {
		return xtbh;
	}
	public void setXtbh(Integer xtbh) {
		this.xtbh = xtbh;
	}
	public Integer getdYear() {
		return dYear;
	}
	public void setdYear(Integer dYear) {
		this.dYear = dYear;
	}
	public Integer getdSszy() {
		return dSszy;
	}
	public void setdSszy(Integer dSszy) {
		this.dSszy = dSszy;
	}
	public Integer getKtbh() {
		return ktbh;
	}
	public void setKtbh(Integer ktbh) {
		this.ktbh = ktbh;
	}
	public Date getShrq() {
		return shrq;
	}
	public void setShrq(Date shrq) {
		this.shrq = shrq;
	}
	public Date getQsrq() {
		return qsrq;
	}
	public void setQsrq(Date qsrq) {
		this.qsrq = qsrq;
	}
	public Date getFfrq() {
		return ffrq;
	}
	public void setFfrq(Date ffrq) {
		this.ffrq = ffrq;
	}
	public String getSjmd() {
		return sjmd;
	}
	public void setSjmd(String sjmd) {
		this.sjmd = sjmd;
	}
	public String getNryq() {
		return nryq;
	}
	public void setNryq(String nryq) {
		this.nryq = nryq;
	}
	public String getCgyq() {
		return cgyq;
	}
	public void setCgyq(String cgyq) {
		this.cgyq = cgyq;
	}
	public String getCkwx() {
		return ckwx;
	}
	public void setCkwx(String ckwx) {
		this.ckwx = ckwx;
	}
	public String getJdap() {
		return jdap;
	}
	public void setJdap(String jdap) {
		this.jdap = jdap;
	}
	public String getShyj() {
		return shyj;
	}
	public void setShyj(String shyj) {
		this.shyj = shyj;
	}
	@Override
	public String toString() {
		return "DProject [xtbh=" + xtbh + ", dYear=" + dYear + ", dSszy=" + dSszy + ", ktbh=" + ktbh + ", shrq=" + shrq
				+ ", qsrq=" + qsrq + ", ffrq=" + ffrq + ", sjmd=" + sjmd + ", nryq=" + nryq + ", cgyq=" + cgyq
				+ ", ckwx=" + ckwx + ", jdap=" + jdap + ", shyj=" + shyj + "]";
	}
	
}
