package cn.edu.hebiace.lxy.gpcps.teacherA.pojo;

import java.util.Date;

public class TMaterial {
	//系统编号
	private Integer xtbh;
	//年度
	private Integer dYear;
	//所属专业
	private Integer sszy;
	//指导教师
	private Integer tNo;
	//课题编号
	private Integer ktbh;
	//外文翻译
	private String jWwfy;
	//任务书
	private String jRws;
	//开题报告
	private String jKtbg;
	//学习态度
	private String jXxtd;
	//出勤情况
	private String jCqqk;
	//工作进度
	private String jGzjd;
	//回报解答
	private String jHbjd;
	//成绩评语
	private String jCjpy;
	//中期检查问题
	private String fZqWt;
	//中期检查评议
	private String fZqPy;
	//完成日期
	private Date fWcrq;
	//外文翻译
	private String fWwpy;
	//实习成绩
	private String fSxcj;
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
	
	public Integer getSszy() {
		return sszy;
	}
	public void setSszy(Integer sszy) {
		this.sszy = sszy;
	}
	public Integer gettNo() {
		return tNo;
	}
	public void settNo(Integer tNo) {
		this.tNo = tNo;
	}
	public Integer getKtbh() {
		return ktbh;
	}
	public void setKtbh(Integer ktbh) {
		this.ktbh = ktbh;
	}
	public String getjWwfy() {
		return jWwfy;
	}
	public void setjWwfy(String jWwfy) {
		this.jWwfy = jWwfy;
	}
	public String getjRws() {
		return jRws;
	}
	public void setjRws(String jRws) {
		this.jRws = jRws;
	}
	public String getjKtbg() {
		return jKtbg;
	}
	public void setjKtbg(String jKtbg) {
		this.jKtbg = jKtbg;
	}
	public String getjXxtd() {
		return jXxtd;
	}
	public void setjXxtd(String jXxtd) {
		this.jXxtd = jXxtd;
	}
	public String getjCqqk() {
		return jCqqk;
	}
	public void setjCqqk(String jCqqk) {
		this.jCqqk = jCqqk;
	}
	public String getjGzjd() {
		return jGzjd;
	}
	public void setjGzjd(String jGzjd) {
		this.jGzjd = jGzjd;
	}
	public String getjHbjd() {
		return jHbjd;
	}
	public void setjHbjd(String jHbjd) {
		this.jHbjd = jHbjd;
	}
	public String getjCjpy() {
		return jCjpy;
	}
	public void setjCjpy(String jCjpy) {
		this.jCjpy = jCjpy;
	}
	public String getfZqWt() {
		return fZqWt;
	}
	public void setfZqWt(String fZqWt) {
		this.fZqWt = fZqWt;
	}
	public String getfZqPy() {
		return fZqPy;
	}
	public void setfZqPy(String fZqPy) {
		this.fZqPy = fZqPy;
	}
	public Date getfWcrq() {
		return fWcrq;
	}
	public void setfWcrq(Date fWcrq) {
		this.fWcrq = fWcrq;
	}
	public String getfWwpy() {
		return fWwpy;
	}
	public void setfWwpy(String fWwpy) {
		this.fWwpy = fWwpy;
	}
	public String getfSxcj() {
		return fSxcj;
	}
	public void setfSxcj(String fSxcj) {
		this.fSxcj = fSxcj;
	}
	@Override
	public String toString() {
		return "TMaterial [xtbh=" + xtbh + ", dYear=" + dYear + ", sszy=" + sszy + ", tNo=" + tNo + ", ktbh=" + ktbh
				+ ", jWwfy=" + jWwfy + ", jRws=" + jRws + ", jKtbg=" + jKtbg + ", jXxtd=" + jXxtd + ", jCqqk=" + jCqqk
				+ ", jGzjd=" + jGzjd + ", jHbjd=" + jHbjd + ", jCjpy=" + jCjpy + ", fZqWt=" + fZqWt + ", fZqPy=" + fZqPy
				+ ", fWcrq=" + fWcrq + ", fWwpy=" + fWwpy + ", fSxcj=" + fSxcj + "]";
	}
	
	
}
