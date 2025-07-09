/**
 * 
 */
package teamproject.users.service.impl;



import org.egovframe.rte.psl.dataaccess.mapper.Mapper;

import teamproject.users.service.UsersService;
import teamproject.users.service.UsersVO;

/**
 * @author ohtae
 *
 */
@Mapper
public interface UsersMapper {
	public UsersVO authenticate(UsersVO loginVO); //로그인
	public void register(UsersVO usersVO); // 회원가입
}
