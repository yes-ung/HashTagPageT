package teamproject.episode.service;

import java.util.List;

import teamproject.common.Criteria;

public interface EpisodeService {
	List<?> selectEpisodeList(Criteria criteria);//전체조회
	int selectEpisodeListTotCnt(Criteria criteria); // 총 개수 구하기
	EpisodeVO selectEpisode(String episodeId);//상세조회
	int insert(EpisodeVO episodeVO);//insert
	String update(EpisodeVO episodeVO);//update메소드
	int delete(EpisodeVO episodeVO);//DELETE메소드
}
