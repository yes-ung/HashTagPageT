/**
 * 
 */
package teamproject.author.service;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
import teamproject.common.Criteria;

/**
 * @author user
 *
 */
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class AuthorVO extends Criteria{
	private String authorId;            // 기본키(자바 코딩)
	private String authorName;    // 작가이름
	private String authorBio;    // 첨부파일
	private String authorDebutDate;  // 이미지 다운로드를 위한 URL
	private String snsLink1;            // 작가가 활동하는 SNS 링크
	private String snsLink2;            // 작가가 활동하는 SNS 링크
	private String authorEmail;         // 공개용 이메일 필수 X
	
}
