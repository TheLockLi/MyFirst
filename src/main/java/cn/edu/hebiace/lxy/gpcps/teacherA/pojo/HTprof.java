package cn.edu.hebiace.lxy.gpcps.teacherA.pojo;

public class HTprof {
	//系统编号
	private Integer xtbh;
	//教师编号
	private Integer jsbh;
	//年度
	private Integer dYear;
	//职称
	private String prof;
	public Integer getXtbh() {
		return xtbh;
	}
	public void setXtbh(Integer xtbh) {
		this.xtbh = xtbh;
	}
	public Integer getJsbh() {
		return jsbh;
	}
	public void setJsbh(Integer jsbh) {
		this.jsbh = jsbh;
	}
	public Integer getdYear() {
		return dYear;
	}
	public void setdYear(Integer dYear) {
		this.dYear = dYear;
	}
	public String getProf() {
		return prof;
	}
	public void setProf(String prof) {
		this.prof = prof;
	}
	@Override
	public String toString() {
		return "HTprof [xtbh=" + xtbh + ", jsbh=" + jsbh + ", dYear=" + dYear + ", prof=" + prof + "]";
	}
	
	
}
