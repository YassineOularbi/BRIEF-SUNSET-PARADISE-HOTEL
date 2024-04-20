package com.java.servlets;

import java.io.IOException;
import java.sql.Date;
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
        RoomDAOImpl roomdao = new RoomDAOImpl();
        Date checkIn = Date.valueOf(request.getParameter("checkIn"));
        Date checkOut = Date.valueOf(request.getParameter("checkOut"));
        String inputType = request.getParameter("inputType");
        Integer inputAdults = Integer.valueOf(request.getParameter("adults"));
        Integer inputChildrens = Integer.valueOf(request.getParameter("childrens"));
        Integer inputCapacity = calcCapacity(inputAdults, inputChildrens);
        request.setAttribute("checkIn", checkIn);
        request.setAttribute("checkOut", checkOut);
        request.setAttribute("inputType", inputType);
        request.setAttribute("inputAdults", inputAdults);
        request.setAttribute("inputChildrens", inputChildrens);
        try {
            request.setAttribute("arrayRoom", roomdao.searchAvailableRoom(inputType, inputCapacity));
        } catch (ClassNotFoundException | SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        this.getServletContext().getRequestDispatcher("/WEB-INF/Room.jsp").forward(request, response);
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RoomDAOImpl roomdao = new RoomDAOImpl();
        Date checkIn = Date.valueOf(request.getParameter("checkIn"));
        Date checkOut = Date.valueOf(request.getParameter("checkOut"));
        String inputType = request.getParameter("inputType");
        Integer inputAdults = Integer.valueOf(request.getParameter("adults"));
        Integer inputChildrens = Integer.valueOf(request.getParameter("childrens"));
        Integer inputCapacity = calcCapacity(inputAdults, inputChildrens);
        request.setAttribute("checkIn", checkIn);
        request.setAttribute("checkOut", checkOut);
        request.setAttribute("inputType", inputType);
        request.setAttribute("inputAdults", inputAdults);
        request.setAttribute("inputChildrens", inputChildrens);
        try {
			request.setAttribute("arrayRoom", roomdao.searchAvailableRoom(inputType, inputCapacity));
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        this.getServletContext().getRequestDispatcher("/WEB-INF/Room.jsp").forward(request, response);
    }

    private Integer calcCapacity(Integer inputAdults, Integer inputChildrens) {
        return inputAdults + inputChildrens;
    }

}
