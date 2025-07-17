/**
 * 
 */
package teamproject.users.service;

import java.util.List;

import teamproject.common.Criteria;

/**
 * @author ohtae
 *
 */
public interface UsersService {
	UsersVO authenticate(UsersVO loginVO)throws Exception; //로그인
	void register(UsersVO usersVO)throws Exception; // 회원가입
	List<?> selectUsersList(Criteria criteria);  //유저정보 가져오기
}
