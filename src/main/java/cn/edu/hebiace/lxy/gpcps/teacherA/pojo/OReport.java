package cn.edu.hebiace.lxy.gpcps.teacherA.pojo;

import java.util.Date;

public class OReport {
		//系统编号
		private Long xtbh;
		//年度
		private Integer dYear;
		//所属专业
		private Integer dSszy;
		//课题编号
		private Integer ktbh;
		//填表日期
		private Date tbrq;
		//开题日期
		private Date ktrq;
		//审核日期
		private Date shrq;
		//研究意义
		private String yjyy;
		//基本内容
		private String jbnr;
		//	研究思路方法
		private String yjff;
		//	重点关键
		private String zdgj;
		//	总体安排
		private String ztap;
		//参考文献
		private String ckwx;
		//	导师意见
		private String dsyj;
		//	审核意见
		private String shyj;
		//修改意见
		private String xgjy;
		public Long getXtbh() {
			return xtbh;
		}
		public void setXtbh(Long xtbh) {
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
		public Date getTbrq() {
			return tbrq;
		}
		public void setTbrq(Date tbrq) {
			this.tbrq = tbrq;
		}
		public Date getKtrq() {
			return ktrq;
		}
		public void setKtrq(Date ktrq) {
			this.ktrq = ktrq;
		}
		public Date getShrq() {
			return shrq;
		}
		public void setShrq(Date shrq) {
			this.shrq = shrq;
		}
		public String getYjyy() {
			return yjyy;
		}
		public void setYjyy(String yjyy) {
			this.yjyy = yjyy;
		}
		public String getJbnr() {
			return jbnr;
		}
		public void setJbnr(String jbnr) {
			this.jbnr = jbnr;
		}
		public String getYjff() {
			return yjff;
		}
		public void setYjff(String yjff) {
			this.yjff = yjff;
		}
		public String getZdgj() {
			return zdgj;
		}
		public void setZdgj(String zdgj) {
			this.zdgj = zdgj;
		}
		public String getZtap() {
			return ztap;
		}
		public void setZtap(String ztap) {
			this.ztap = ztap;
		}
		public String getCkwx() {
			return ckwx;
		}
		public void setCkwx(String ckwx) {
			this.ckwx = ckwx;
		}
		public String getDsyj() {
			return dsyj;
		}
		public void setDsyj(String dsyj) {
			this.dsyj = dsyj;
		}
		public String getShyj() {
			return shyj;
		}
		public void setShyj(String shyj) {
			this.shyj = shyj;
		}
		public String getXgjy() {
			return xgjy;
		}
		public void setXgjy(String xgjy) {
			this.xgjy = xgjy;
		}
		@Override
		public String toString() {
			return "OReport [xtbh=" + xtbh + ", dYear=" + dYear + ", dSszy=" + dSszy + ", ktbh=" + ktbh + ", tbrq="
					+ tbrq + ", ktrq=" + ktrq + ", shrq=" + shrq + ", yjyy=" + yjyy + ", jbnr=" + jbnr + ", yjff="
					+ yjff + ", zdgj=" + zdgj + ", ztap=" + ztap + ", ckwx=" + ckwx + ", dsyj=" + dsyj + ", shyj="
					+ shyj + ", xgjy=" + xgjy + "]";
		}
		
		
}
