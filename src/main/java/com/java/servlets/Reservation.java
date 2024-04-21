package com.java.servlets;

import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.dao.ReservationDAOImpl;
import com.java.dao.RoomDAOImpl;


@WebServlet("/Reservation")
public class Reservation extends HttpServlet {
    private static final long serialVersionUID = 1L;


    public Reservation() {
        super();

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RoomDAOImpl roomDAO = new RoomDAOImpl();
        ReservationDAOImpl reservationDAO = new ReservationDAOImpl();

        if (request.getParameter("Id") != null && !request.getParameter("Id").isEmpty() &&
                request.getParameter("checkIn") != null && !request.getParameter("checkIn").isEmpty() &&
                request.getParameter("checkOut") != null && !request.getParameter("checkOut").isEmpty()) {

            Integer Id = Integer.valueOf(request.getParameter("Id"));
            Date checkIn = Date.valueOf(request.getParameter("checkIn"));
            Date checkOut = Date.valueOf(request.getParameter("checkOut"));
            request.setAttribute("checkIn", checkIn);
            request.setAttribute("checkOut", checkOut);
            try {
                request.setAttribute("arrayRoom", roomDAO.searchRoomById(Id));
            } catch (SQLException | ClassNotFoundException e) {
                throw new ServletException(e);
            }
            this.getServletContext().getRequestDispatcher("/WEB-INF/Reservation.jsp").forward(request, response);
        } else {
            try {
                request.setAttribute("arrayReservation", reservationDAO.getDataReservation());
            } catch (SQLException | ClassNotFoundException e) {
                throw new ServletException(e);
            }
            this.getServletContext().getRequestDispatcher("/WEB-INF/ReservationHistory.jsp").forward(request, response);
        }

    }



    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ReservationDAOImpl reservationDAO = new ReservationDAOImpl();
        if (!(request.getParameter("roomId") == null) & !(request.getParameter("roomId").isEmpty())) {
            Integer roomId = Integer.valueOf(request.getParameter("roomId"));
            String guestName = request.getParameter("name");
            String guestEmail = request.getParameter("email");
            String guestNumber = request.getParameter("phone");
            Date dateStart = Date.valueOf(request.getParameter("checkIn"));
            Date dateEnd = Date.valueOf(request.getParameter("checkOut"));
            try {
                reservationDAO.reserveRoom(roomId, guestName, guestEmail, guestNumber, dateStart, dateEnd);
            } catch (SQLException | ClassNotFoundException e) {
                throw new RuntimeException(e);
            }
        }
        try {
            request.setAttribute("arrayReservation", reservationDAO.getDataReservation());
        } catch (SQLException | ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        this.getServletContext().getRequestDispatcher("/WEB-INF/ReservationHistory.jsp").forward(request, response);
    }

}
