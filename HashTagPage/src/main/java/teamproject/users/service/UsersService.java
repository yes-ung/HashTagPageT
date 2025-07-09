/**
 * 
 */
package teamproject.users.service;

/**
 * @author ohtae
 *
 */
public interface UsersService {
	UsersVO authenticate(UsersVO loginVO)throws Exception; //로그인
	void register(UsersVO usersVO)throws Exception; // 회원가입
}
