package com.sist.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.model.BoardDAO;
import com.sist.model.BoardDTO;

@WebServlet("/cont.do")
public class ContServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ContServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int board_no=Integer.parseInt(request.getParameter("no"));
		BoardDAO dao = new BoardDAO();
		dao.boardHit(board_no); //조회수 증가 메섣 호출
		
		// 이렇게 두메서드가 연속으로나올때는 con 객체를 닫아주면안됨.....
		BoardDTO cont = dao.getCont(board_no);
		
		request.setAttribute("Cont", cont);
		RequestDispatcher rd = request.getRequestDispatcher("board_cont.jsp");
		rd.forward(request, response);
	}

}
