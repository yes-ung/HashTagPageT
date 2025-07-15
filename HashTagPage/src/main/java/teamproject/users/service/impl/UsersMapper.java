/**
 * 
 */
package teamproject.users.service.impl;



import java.util.List;

import org.egovframe.rte.psl.dataaccess.mapper.Mapper;

import teamproject.common.Criteria;
import teamproject.users.service.UsersVO;

/**
 * @author ohtae
 *
 */
@Mapper
public interface UsersMapper {
	public UsersVO authenticate(UsersVO loginVO); //로그인
	public void register(UsersVO usersVO); // 회원가입
	public List<?> selectUsersList(Criteria criteria);
}
