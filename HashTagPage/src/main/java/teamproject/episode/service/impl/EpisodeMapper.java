package teamproject.episode.service.impl;

import java.util.List;

import org.egovframe.rte.psl.dataaccess.mapper.Mapper;

import teamproject.common.Criteria;
import teamproject.episode.service.EpisodeVO;

@Mapper
public interface EpisodeMapper {
	public List<?> selectEpisodeList(Criteria criteria);//전체조회
	public int selectEpisodeListTotCnt(Criteria criteria); // 총 개수 구하기
	public EpisodeVO selectEpisode(String episodeId);//상세조회
	public int insert(EpisodeVO episodeVO);//insert
	public String update(EpisodeVO episodeVO);//update메소드
	public int delete(EpisodeVO episodeVO);//DELETE메소드
}