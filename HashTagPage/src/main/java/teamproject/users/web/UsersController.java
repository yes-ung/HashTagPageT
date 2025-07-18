/**
 * 
 */
package teamproject.users.web;

import java.io.PrintWriter;
import java.util.UUID;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.extern.log4j.Log4j2;
import teamproject.users.service.UsersService;
import teamproject.users.service.UsersVO;

/**
 * @author ohtae
 *
 */
@Log4j2
@Controller
public class UsersController {
   // 데이터 베이스 조회하려고 만듬
      @Autowired
      private UsersService usersService;



//      로그인 처리
      @PostMapping("/loginProcess.do")
      public String login(HttpSession session, @ModelAttribute UsersVO loginVO
            ,Model model, HttpServletResponse response) throws Exception {

//         1) DB에 입력된 유저가 있는지 확인:  서비스의 로그인 메소드 실행
         UsersVO usersVO = usersService.authenticate(loginVO);
//         로그인할때 일치하지 않으면 에러 메세지 뜨게하기
         if (usersVO == null) {
            response.setContentType("text/html;charset=UTF-8");
              PrintWriter out = response.getWriter();
              out.println("<script>alert('아이디 또는 비밀번호가 일치하지 않습니다.'); location.href='/hashtagpage/login.do';</script>");
              out.flush();
              return null; // 뷰 리졸버 사용 안 함
          }
//         2) 세션을 만든다.: 유저저장(세션: 정보를 입시로 저장하는 공간: 보통 서버컴퓨터(스프링)에 저장됨)
//         사용법 : 세션.setAttribute("키", 값)
         session.setAttribute("usersVO", usersVO);
//            (DB는 영구적)vs (세션은 임시저장, 컴퓨터 재시작시 사라짐, 웹브라우저를 꺼도 사라짐)
//         2-2) 보안코딩 : CSRF(사이트 위조) 공격 방어: 인증 토큰(세션)
//         session.setAttribute("CSRF_TOKEN", UUID.randomUUID().toString());
//         3) 통과: 이동할 페이지 강제이동
         return "redirect:/";//홈으로 강제이동

      }

//      로그아웃 처리
      @GetMapping("/logout.do")
      public String logout(HttpSession session) {
//         세션 전체 삭제
         session.invalidate(); // 세션에 들어있는것을 무효화한다는 뜻
         return "redirect:/hashtagpage/login.do";
      }


   //  회원가입 처리
      @PostMapping("/register/addition.do")
      public String register(Model model, @ModelAttribute UsersVO usersVO) throws Exception {
//        서비스의 회원가입 메소드 실행
         log.info("테스트"+usersVO);
         usersService.register(usersVO);
//        성공메세지 JSP 전달
         model.addAttribute("msg", "회원 가입을 성공했습니다.");

         return "/modules/login";
      }
}
