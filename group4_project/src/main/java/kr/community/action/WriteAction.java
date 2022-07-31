package kr.community.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;

import kr.community.dao.CommunityDAO;
import kr.community.vo.CommunityVO;
import kr.controller.Action;
import kr.util.FileUtil;

public class WriteAction implements Action{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		HttpSession session = request.getSession();
		Integer user_num = (Integer)session.getAttribute("user_num");
		if(user_num==null) {
			return "redirect:/member/loginForm.jsp";
		}
		
		MultipartRequest multi = FileUtil.createFile(request);
		CommunityVO comm = new CommunityVO();
		comm.setCo_title(multi.getParameter("co_title"));
		comm.setCo_write(multi.getParameter("co_write"));
		comm.setMe_key(user_num);
		
		CommunityDAO dao = CommunityDAO.getInstance();
		dao.insertBoard(comm);
		
		return "/WEB-INF/views/community/write.jsp";
	}

}
