package teamproject.boardPost.service;

import lombok.AllArgsConstructor;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
import teamproject.common.Criteria;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@EqualsAndHashCode(callSuper = false)
public class BoardPostVO extends Criteria{
	private String postId;//게시글 ID
	private String userId;
	private String categoryId;
	private String typeId;
	private int boardPostViews;//조회수
	private String boardPostTitle;//제목
	private String boardPostContent;//내용
	private String boardPostCreatedAt;//게시글 작성일
	private String boardPostUpdatedAt;//수정일
	private String boardPostIsDeleted;//기본값 : N 삭제시 : Y
	
	
	public BoardPostVO(String postId, int boardPostViews, String boardPostTitle) {
		super();
		this.postId = postId;
		this.boardPostViews = boardPostViews;
		this.boardPostTitle = boardPostTitle;
	}
	
	
}
