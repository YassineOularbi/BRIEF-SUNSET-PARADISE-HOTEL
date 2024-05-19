package com.java.servlets;

import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.dao.ReservationDAOImpl;
import com.java.dao.RoomDAOImpl;


@WebServlet("/ReservationDetails")
public class ReservationDetails extends HttpServlet {
    private static final long serialVersionUID = 1L;


    public ReservationDetails() {
        super();

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ReservationDAOImpl reservationDAO = new ReservationDAOImpl();
        Integer reservationId = Integer.valueOf(request.getParameter("reservationId"));
		LocalDate currentDate = LocalDate.now();
		request.setAttribute("now", currentDate);
        try {
			request.setAttribute("details", reservationDAO.reservationDetails(reservationId).stream().collect(Collectors.toList()).get(0));
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        this.getServletContext().getRequestDispatcher("/WEB-INF/ReservationDetails.jsp").forward(request, response);


    }



    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        }
    }



