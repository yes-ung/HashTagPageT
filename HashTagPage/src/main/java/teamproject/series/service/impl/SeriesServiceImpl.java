package teamproject.series.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import teamproject.book.service.BookService;
import teamproject.book.service.BookVO;
import teamproject.common.Criteria;
import teamproject.series.service.SeriesService;
import teamproject.series.service.SeriesVO;

@Service
public class SeriesServiceImpl implements SeriesService {
	@Autowired
	private SeriesMapper seriesMapper;
	
    	
	

	@Override
	public List<SeriesVO> selectAllSeries() {
		// TODO Auto-generated method stub
		return seriesMapper.selectAllSeries();
	}
	@Override
	public List<?> selectSeriesList(Criteria criteria) {
		// TODO Auto-generated method stub
		return seriesMapper.selectSeriesList(criteria);
	}
	@Override
	public List<?> selectTop10List(Criteria criteria) {
		// TODO Auto-generated method stub
		return seriesMapper.selectTop10List(criteria);
	}
	@Override
	public List<?> selectTrendList(Criteria criteria) {
		// TODO Auto-generated method stub
		return seriesMapper.selectTrendList(criteria);
	}
	@Override
	public int selectSeriesListTotCnt(Criteria criteria) {
		// TODO Auto-generated method stub
		return seriesMapper.selectSeriesListTotCnt(criteria);
	}
	@Override
	public SeriesVO selectSeries(String seriesId) {
		// TODO Auto-generated method stub
		return seriesMapper.selectSeries(seriesId);
	}
	@Override
	public int insert(SeriesVO seriseVO) {
		String downloadURL = generateDownloadUrl(seriseVO.getSeriesId());
		seriseVO.setThumbnailImgUrl(downloadURL);
		return seriesMapper.insert(seriseVO);
	}
	@Override
	public String update(SeriesVO seriseVO) {
		// TODO Auto-generated method stub
		return seriesMapper.update(seriseVO);
	}
	@Override
	public int delete(SeriesVO seriseVO) {
		// TODO Auto-generated method stub
		return seriesMapper.delete(seriseVO);
	}
	public String generateDownloadUrl(String seriesId) {
//		 인터넷 주소 체계 : http://localhost:8080/경로(path)?쿼리스트링
//		 기본 주소(ContextPath) : http://localhost:8080
//		 URL 만들어주는 자바 클래스 : ServletUriComponentsBuilder
	        return ServletUriComponentsBuilder      
	          .fromCurrentContextPath()    // 스프링 기본주소 가져옴: http://localhost:8080
 	          .path("/series/download.do") // 경로 붙이기 : /fileDb/download.do
	          .query("seriesId="+seriesId+"&type=thumbnail")         // 쿼리스트링 붙이기 : ?uuid=uuid
	          .toUriString();              // 위에꺼 조합해줌
//	최종형태 :  http://localhost:8080/fileDb/download.do?uuid=uuid    
	   }
	 public String generateContentDownloadUrl(String seriesId) {
//		 인터넷 주소 체계 : http://localhost:8080/경로(path)?쿼리스트링
//		 기본 주소(ContextPath) : http://localhost:8080
//		 URL 만들어주는 자바 클래스 : ServletUriComponentsBuilder
	        return ServletUriComponentsBuilder      
	          .fromCurrentContextPath()    // 스프링 기본주소 가져옴: http://localhost:8080
 	          .path("/series/download.do") // 경로 붙이기 : /fileDb/download.do
	          .query("seriesId="+seriesId+"&type=content")         // 쿼리스트링 붙이기 : ?uuid=uuid
	          .toUriString();              // 위에꺼 조합해줌
//	최종형태 :  http://localhost:8080/fileDb/download.do?uuid=uuid    
	   }
	
	
	
	
}