package cn.edu.hebiace.lxy.gpcps.teacherA.pojo;

public class StudentInfo {
	//系统编号
	private Integer xtbh;
	//年度(届)
	private Integer dYear;
	//学号
	private String sNo;
	//姓名
	private String sName;
	//一志愿
	private Integer cFirst;
	//二志愿
	private Integer cSecond;
	//征集志愿
	private Integer cCollcet;
	//选题结果
	private Integer cLast;
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
	public String getsNo() {
		return sNo;
	}
	public void setsNo(String sNo) {
		this.sNo = sNo;
	}
	
	public Integer getcFirst() {
		return cFirst;
	}
	public String getsName() {
		return sName;
	}

	public void setsName(String sName) {
		this.sName = sName;
	}

	public void setcFirst(Integer cFirst) {
		this.cFirst = cFirst;
	}
	public Integer getcSecond() {
		return cSecond;
	}
	public void setcSecond(Integer cSecond) {
		this.cSecond = cSecond;
	}
	public Integer getcCollcet() {
		return cCollcet;
	}
	public void setcCollcet(Integer cCollcet) {
		this.cCollcet = cCollcet;
	}
	public Integer getcLast() {
		return cLast;
	}
	public void setcLast(Integer cLast) {
		this.cLast = cLast;
	}

	@Override
	public String toString() {
		return "StudentInfo [xtbh=" + xtbh + ", dYear=" + dYear + ", sNo=" + sNo + ", sName=" + sName + ", cFirst="
				+ cFirst + ", cSecond=" + cSecond + ", cCollcet=" + cCollcet + ", cLast=" + cLast + "]";
	}
	
	
}
