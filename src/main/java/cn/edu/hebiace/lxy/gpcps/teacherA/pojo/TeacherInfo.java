package cn.edu.hebiace.lxy.gpcps.teacherA.pojo;

import java.util.Date;
import java.util.List;

public class TeacherInfo {
	//系统编号
	private Integer xtbh;
	//教师工号
	private String tCode;
	//隶属专业
	private Integer major;
	//密码
	private String pWord;
	//教师姓名
	private String tName;
	//输入码
	private String inputCode;
	//性别
	private String tSex;
	//出生日期
	private Date birthday;
	//民族
	private String nationality;
	//政治面貌
	private String political;
	//学历
	private String eduLevel;
	//学位
	private String degree;
	//职称
	private String prof;
	//职务
	private String post;
	//电话
	private String telephone;
	//邮箱
	private String eMail;
	//qq
	private String qqNum;
	//研究方向
	private String sField;
	//特长
	private String specialty;
	//照片
	private String photo;
	//签字
	private String sign;
	//是否离岗
	private Integer offJob;
	//备注
	private String remarks;
	//互动选题提交
	private Integer cComc;
	
	
	
	public Integer getXtbh() {
		return xtbh;
	}
	public void setXtbh(Integer xtbh) {
		this.xtbh = xtbh;
	}
	public String gettCode() {
		return tCode;
	}
	public void settCode(String tCode) {
		this.tCode = tCode;
	}
	public Integer getMajor() {
		return major;
	}
	public void setMajor(Integer major) {
		this.major = major;
	}
	public String getpWord() {
		return pWord;
	}
	public void setpWord(String pWord) {
		this.pWord = pWord;
	}
	public String gettName() {
		return tName;
	}
	public void settName(String tName) {
		this.tName = tName;
	}
	public String getInputCode() {
		return inputCode;
	}
	public void setInputCode(String inputCode) {
		this.inputCode = inputCode;
	}
	public String gettSex() {
		return tSex;
	}
	public void settSex(String tSex) {
		this.tSex = tSex;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getNationality() {
		return nationality;
	}
	public void setNationality(String nationality) {
		this.nationality = nationality;
	}
	
	
	public String getPolitical() {
		return political;
	}
	public void setPolitical(String political) {
		this.political = political;
	}
	public String getEduLevel() {
		return eduLevel;
	}
	public void setEduLevel(String eduLevel) {
		this.eduLevel = eduLevel;
	}
	public String getDegree() {
		return degree;
	}
	public void setDegree(String degree) {
		this.degree = degree;
	}
	public String getProf() {
		return prof;
	}
	public void setProf(String prof) {
		this.prof = prof;
	}
	public String getPost() {
		return post;
	}
	public void setPost(String post) {
		this.post = post;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String geteMail() {
		return eMail;
	}
	public void seteMail(String eMail) {
		this.eMail = eMail;
	}
	public String getQqNum() {
		return qqNum;
	}
	public void setQqNum(String qqNum) {
		this.qqNum = qqNum;
	}
	public String getsField() {
		return sField;
	}
	public void setsField(String sField) {
		this.sField = sField;
	}
	public String getSpecialty() {
		return specialty;
	}
	public void setSpecialty(String specialty) {
		this.specialty = specialty;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getSign() {
		return sign;
	}
	public void setSign(String sign) {
		this.sign = sign;
	}
	public Integer getOffJob() {
		return offJob;
	}
	public void setOffJob(Integer offJob) {
		this.offJob = offJob;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	public Integer getcComc() {
		return cComc;
	}
	public void setcComc(Integer cComc) {
		this.cComc = cComc;
	}
	@Override
	public String toString() {
		return "TeacherInfo [xtbh=" + xtbh + ", tCode=" + tCode + ", major=" + major + ", pWord=" + pWord + ", tName="
				+ tName + ", inputCode=" + inputCode + ", tSex=" + tSex + ", birthday=" + birthday + ", nationality="
				+ nationality + ", political=" + political + ", eduLevel=" + eduLevel + ", degree=" + degree + ", prof="
				+ prof + ", post=" + post + ", telephone=" + telephone + ", eMail=" + eMail + ", qqNum=" + qqNum
				+ ", sField=" + sField + ", specialty=" + specialty + ", photo=" + photo + ", sign=" + sign
				+ ", offJob=" + offJob + ", remarks=" + remarks + ", cComc=" + cComc + "]";
	}
	
	
	



}
