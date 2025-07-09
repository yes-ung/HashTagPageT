package teamproject.series.service.impl;

import java.util.List;

import org.egovframe.rte.psl.dataaccess.mapper.Mapper;

import teamproject.book.service.BookVO;
import teamproject.common.Criteria;
import teamproject.series.service.SeriesVO;

@Mapper
public interface SeriesMapper {
	 public List<SeriesVO> selectAllSeries(); // 전체조회 
	 public List<?> selectSeriesList(Criteria criteria); // 전체조회 
	 public List<?> selectTop10List(Criteria criteria); // top10 
	 public List<?> selectTrendList(Criteria criteria); // 급상승 트렌드 
	 public int selectSeriesListTotCnt(Criteria criteria);
	 public SeriesVO selectSeries(String seriesId);        // bookId로 책 한권에 대한 정보 받아오기 
	 public int insert(SeriesVO seriseVO);                // 추가 
	 public String update(SeriesVO seriseVO);                // 수정 
	 public int delete(SeriesVO seriseVO);					//삭제
}    
