package cn.edu.hebiace.lxy.gpcps.teacherA.service;

import java.util.List;
import java.util.Random;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.edu.hebiace.lxy.gpcps.teacherA.mapper.QsInfoMapper;
import cn.edu.hebiace.lxy.gpcps.teacherA.mapper.StudentInfoMapper;
import cn.edu.hebiace.lxy.gpcps.teacherA.pojo.QsInfo;

@Service
public class QsInfoServiceImpl implements QsInfoService {
	@Resource
	private QsInfoMapper qsInfoMapper;
	@Resource
	private StudentInfoMapper studentInfoMapper;
	@Override
	public void saveQsInfo(QsInfo qsInfo) {
		qsInfo.setXtbh(new Random().nextInt(1010));
		qsInfo.setFlag(3);
		
		qsInfoMapper.saveQsInfo(qsInfo);
	}
	@Override
	public void submitQsInfo(QsInfo qsInfo) {
		qsInfo.setXtbh(new Random().nextInt(1010));
		qsInfo.setFlag(1);
		
		qsInfoMapper.saveQsInfo(qsInfo);
		
	}
	@Override
	public List<QsInfo> findQSByNoChose(String tCode) {
		List<QsInfo> QsInfoList = qsInfoMapper.findQSByNoChose(tCode);
		for (QsInfo qsinfo : QsInfoList) {
			qsinfo.setStudentfists(studentInfoMapper.findByQsFirst(qsinfo.getXtbh()));
			qsinfo.setStudentSeconds(studentInfoMapper.findByQsSecond(qsinfo.getXtbh()));;
		}
		return QsInfoList;
	}
	@Override
	public List<String> findQSXtbhByNoChose(String tCode) {
		return qsInfoMapper.findQSXtbhByNoChose(tCode);
	}
	@Override
	public void ChoseStudent(String xtbh, String sNo) {
		Integer flag = 2;
		qsInfoMapper.updateChoseStudent(xtbh,sNo,flag);
		
	}
	@Override
	public List<QsInfo> findQSByNoChoseSecond(String tCode) {
		List<QsInfo> QsInfoList = qsInfoMapper.findQSByNoChose(tCode);
		for (QsInfo qsInfo : QsInfoList) {
			qsInfo.setStudentCollects(studentInfoMapper.findByQsCollect(qsInfo.getXtbh()));
		}
		return QsInfoList;
	}
	@Override
	public List<QsInfo> findAll(String tCode) {
		
		return qsInfoMapper.findAll(tCode);
	}
	@Override
	public QsInfo findQsByXtbh(String ktbh) {
		
		return qsInfoMapper.findQsByXtbh(ktbh);
	}
	@Override
	public void updateQsInfo(QsInfo qsInfo) {
		qsInfo.setFlag(1);
		qsInfoMapper.updateQsInfo(qsInfo);
		
	}
	@Override
	public void tosaveQsInfo(QsInfo qsInfo) {
		qsInfo.setFlag(3);
		qsInfoMapper.updateQsInfo(qsInfo);
		
	}
	@Override
	public void saveStudent(String xtbh, String sNo) {
		
		qsInfoMapper.saveChoseStudent(xtbh,sNo);
		
	}

	

}
