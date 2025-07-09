package teamproject.series.service;

import java.util.List;

import teamproject.common.Criteria;

public interface SeriesService {
	List<SeriesVO> selectAllSeries(); // 전체조회 
	List<?> selectSeriesList(Criteria criteria); // 전체조회 
	List<?> selectTop10List(Criteria criteria); // top10 
	List<?> selectTrendList(Criteria criteria); // 급상승 트렌드 
	int selectSeriesListTotCnt(Criteria criteria);
	SeriesVO selectSeries(String seriesId);        // bookId로 책 한권에 대한 정보 받아오기 
	int insert(SeriesVO seriseVO);                // 추가 
	String update(SeriesVO seriseVO);                // 수정 
	int delete(SeriesVO seriseVO);					//삭제
}
