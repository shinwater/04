package com.sist.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.model.BoardDAO;
import com.sist.model.BoardDTO;


@WebServlet("/updateOk.do")
public class UpdateOkServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UpdateOkServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//한글 인코딩 처리
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		//1.수정폼 창에서 넘어온 데이터를 처리
		String board_writer = request.getParameter("writer").trim();
		String board_title = request.getParameter("title").trim();
		String board_content = request.getParameter("content").trim();
		String board_pwd = request.getParameter("pwd").trim();
		
		//2.수쩡폼 창에서 type="hidden"으로 넘어온 no데이터도 처리해 주어야 한당.
		int board_no = Integer.parseInt(request.getParameter("no").trim());//무ㅠㄴ자열 이ㅣㄱ ㅣ때문에~....형변환을 ...해줘라.....
		
		BoardDTO dto = new BoardDTO();
		
		dto.setBoard_no(board_no);
		dto.setBoard_writer(board_writer);
		dto.setBoard_title(board_title);
		dto.setBoard_cont(board_content);
		dto.setBoard_pwd(board_pwd);
		
		BoardDAO dao = new BoardDAO();
		int res = dao.updateBoard(dto); //인자로 주소값을 넘겨준다!
		
		PrintWriter out = response.getWriter(); 
		
		if(res == 1) {
			out.println("<script>");
			out.println("alert('게시물 수정 성공')");
			out.println("location.href='cont.do?no="+board_no+"'");//
			out.println("</script>");
		}else if(res == -1){ //비밀번호가 틀릴때
			out.println("<script>");
			out.println("alert('비밀번호가 틀렸습니다. 확인욤아')");
			out.println("history.back()");
			out.println("</script>");
		}else {
			out.println("<script>");
			out.println("alert('게시물 수정에 실패했습니다!')");
			out.println("history.back()");
			out.println("</script>");
		}
		
	}

}
