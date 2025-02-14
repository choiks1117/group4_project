package kr.show.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;

import kr.controller.Action;
import kr.show.dao.ShowDAO;
import kr.show.vo.ShowVO;
import kr.util.FileUtil;

public class ShowInsertAction implements Action{

   @Override
   public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

	   request.setCharacterEncoding("utf-8");
      
      HttpSession session = request.getSession();
      Integer user_num = (Integer)session.getAttribute("user_num");
      Integer user_auth = (Integer)session.getAttribute("user_auth");
      
      if(user_num==null) {
         return "redirect/member/loginForm.do"; //.do는 redirect
      }
      if(user_auth != null && user_auth == 1) {
    	  return "/WEB-INF/views/common/notice.jsp"; //ajax로는 못띄우고 notice.jsp로 처리
      }
      
      MultipartRequest multi = FileUtil.createFile(request);

      //자바빈 생성
      ShowVO showVO = new ShowVO();
      
      //전송된 데이터를 자바빈에 저장 //request로하면 무효화됨 -> multi로함
      showVO.setSh_title(multi.getParameter("sh_title"));
      showVO.setSh_date(multi.getParameter("sh_date"));
      showVO.setSh_time(multi.getParameter("sh_time"));
      showVO.setSh_place(multi.getParameter("sh_place"));
      showVO.setSh_detail(multi.getParameter("sh_detail"));
      showVO.setSh_img(multi.getFilesystemName("sh_img")); 
      showVO.setMe_key(user_num);
      
      ShowDAO dao = ShowDAO.getInstance();
      dao.showInsert(showVO);
      
      return "/WEB-INF/views/show/showInsertResult.jsp";
   }

}