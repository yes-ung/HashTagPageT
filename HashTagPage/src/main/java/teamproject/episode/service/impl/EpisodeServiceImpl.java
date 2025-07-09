package teamproject.episode.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import teamproject.common.Criteria;
import teamproject.episode.service.EpisodeService;
import teamproject.episode.service.EpisodeVO;

@Service
public class EpisodeServiceImpl implements EpisodeService {
	
	@Autowired
	private EpisodeMapper episodeMapper;
	
	@Override
	public List<?> selectEpisodeList(Criteria criteria) {
		// TODO Auto-generated method stub
		return episodeMapper.selectEpisodeList(criteria);
	}

	@Override
	public EpisodeVO selectEpisode(String episodeId) {
		// TODO Auto-generated method stub
		return episodeMapper.selectEpisode(episodeId);
	}

	@Override
	public int selectEpisodeListTotCnt(Criteria criteria) {
		// TODO Auto-generated method stub
		return episodeMapper.selectEpisodeListTotCnt(criteria);
	}

	@Override
	public int insert(EpisodeVO episodeVO) {
		// TODO Auto-generated method stub
		String downloadURL = generateDownloadUrl(episodeVO.getEpisodeId());
		String contentURL = generateContentDownloadUrl(episodeVO.getEpisodeId());
		episodeVO.setViewImgUrl(downloadURL);
		episodeVO.setThumbnailImgUrl(contentURL);
		return episodeMapper.insert(episodeVO);
	}
	 public String generateDownloadUrl(String episodeId) {
//		 인터넷 주소 체계 : http://localhost:8080/경로(path)?쿼리스트링
//		 기본 주소(ContextPath) : http://localhost:8080
//		 URL 만들어주는 자바 클래스 : ServletUriComponentsBuilder
	        return ServletUriComponentsBuilder      
	          .fromCurrentContextPath()    // 스프링 기본주소 가져옴: http://localhost:8080
 	          .path("/episode/download.do") // 경로 붙이기 : /fileDb/download.do
	          .query("episodeId="+episodeId+"&type=thumbnail")         // 쿼리스트링 붙이기 : ?uuid=uuid
	          .toUriString();              // 위에꺼 조합해줌
//	최종형태 :  http://localhost:8080/fileDb/download.do?uuid=uuid    
	   }
	 public String generateContentDownloadUrl(String bookId) {
//		 인터넷 주소 체계 : http://localhost:8080/경로(path)?쿼리스트링
//		 기본 주소(ContextPath) : http://localhost:8080
//		 URL 만들어주는 자바 클래스 : ServletUriComponentsBuilder
	        return ServletUriComponentsBuilder      
	          .fromCurrentContextPath()    // 스프링 기본주소 가져옴: http://localhost:8080
 	          .path("/book/download.do") // 경로 붙이기 : /fileDb/download.do
	          .query("bookId="+bookId+"&type=content")         // 쿼리스트링 붙이기 : ?uuid=uuid
	          .toUriString();              // 위에꺼 조합해줌
//	최종형태 :  http://localhost:8080/fileDb/download.do?uuid=uuid    
	   }

	@Override
	public String update(EpisodeVO episodeVO) {
		// TODO Auto-generated method stub
		return episodeMapper.update(episodeVO);
	}

	@Override
	public int delete(EpisodeVO episodeVO) {
		// TODO Auto-generated method stub
		return episodeMapper.delete(episodeVO);
	}
	
}
