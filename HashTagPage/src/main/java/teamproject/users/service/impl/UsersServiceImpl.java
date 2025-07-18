/**
 * 
 */
package teamproject.users.service.impl;

import java.util.List;

import org.egovframe.rte.fdl.cmmn.EgovAbstractServiceImpl;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.log4j.Log4j2;
import teamproject.common.Criteria;
import teamproject.users.service.UsersService;
import teamproject.users.service.UsersVO;

/**
 * @author ohtae
 *
 */
@Log4j2
@Service
public class UsersServiceImpl extends EgovAbstractServiceImpl implements UsersService{
   @Autowired
   private UsersMapper usersMapper;
@Override
public List<?> selectUsersList(Criteria criteria) {
	// TODO Auto-generated method stub
	return usersMapper.selectUsersList(criteria);
}
//   로그인
   @Override
   public UsersVO authenticate(UsersVO loginVO) throws Exception {
      log.info("테스트 : "+loginVO);
      // 1) DB에 사용자가 있는지 확인: loginVO(id,암호)
            UsersVO usersVO = usersMapper.authenticate(loginVO);
//               2) 만약 회원이 없으면 -> 회원이 없습니다.(예외처리: 전자정부용)
//                => 전자정부: 1) EgovAbstractServiceImpl 상속
//                          2) 
            if (usersVO == null) {
               log.info("1");
               return null;
            }
//               3) 회원이 있으면 암호체크 -> 암호틀림(예외처리)
            if (usersVO != null) {
               log.info("2");
//               사용법: BCrypt.checkpw(화면유저암호, DB유저암호); // 같으면 true, 아니면 false
               boolean isMatchedPassword = BCrypt.checkpw(loginVO.getUserPw(),usersVO.getUserPw());
               if (isMatchedPassword == false)
                  return null;
            }
//               4) 모두 통과하면 마지막에 memberVO 리턴 
            return usersVO;
   }
//   회원가입
   @Override
   public void register(UsersVO usersVO) throws Exception {
      log.info("테스트: "+usersVO);
//      1) DB에 회원이 있는지 확인을 먼저 한다:
      UsersVO cmemberVO=usersMapper.authenticate(usersVO);
      log.info("테스트2");
//         2) 있으면(예외처리한다)
      if(cmemberVO != null) throw processException("errors.register");
//         3) 입력된 암호를 => 해싱암호화 처리한다.
//       사용법: BCrypt.hashpw(암호,옵션);
      log.info("테스트3");
      String hashedPassword = BCrypt.hashpw(usersVO.getUserPw(), 
                                          BCrypt.gensalt());
      log.info("테스트4");
//         4) 암호를 memberVO 에 저장한다(setter)
      usersVO.setUserPw(hashedPassword);
//         5) DB 저장
      log.info("테스트5");
      usersMapper.register(usersVO);
   }
   }
   
   

