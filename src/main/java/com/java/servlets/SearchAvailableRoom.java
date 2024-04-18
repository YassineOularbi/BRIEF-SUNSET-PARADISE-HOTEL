package com.java.servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.dao.RoomDAOImpl;


@WebServlet("/SearchAvailableRoom")
public class SearchAvailableRoom extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	
    public SearchAvailableRoom() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RoomDAOImpl roomdao = new RoomDAOImpl();
        Integer inputId = Integer.valueOf(request.getParameter("inputSearch"));
        String inputType = request.getParameter("inputType");
        Integer inputCapacity = Integer.valueOf(request.getParameter("inputCapacity"));
        System.out.println(inputId);
        System.out.println(inputType);
        System.out.println(inputCapacity);
        try {
			request.setAttribute("arrayRoom", roomdao.searchAvailableRoom(inputId, inputType, inputCapacity));
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        this.getServletContext().getRequestDispatcher("/WEB-INF/Test.jsp").forward(request, response);
    }

}
