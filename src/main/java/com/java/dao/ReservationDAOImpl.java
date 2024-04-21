package com.java.dao;

import com.java.beans.Reservation;

import com.java.beans.Room;


import java.sql.*;
import java.util.ArrayList;

public class ReservationDAOImpl implements ReservationDAO{
    public static void statementReservation(ArrayList<Reservation> arrayReservation, PreparedStatement statement) throws SQLException {
        ResultSet resultSet = statement.executeQuery();
        while (resultSet.next()) {
            Integer reservationId = (resultSet.getInt("reservationId"));
            Integer roomId = (resultSet.getInt("roomId"));
            String guestName =  (resultSet.getString("guestName"));
            String guestEmail = (resultSet.getString("guestEmail"));
            String guestNumber = (resultSet.getString("guestNumber"));
            Date dateStart = (resultSet.getDate("dateStart"));
            Date dateEnd = (resultSet.getDate("dateEnd"));

            arrayReservation.add(new Reservation(reservationId, roomId, guestName, guestEmail, guestNumber, dateStart, dateEnd));
        }
    }
    @Override
    public void reserveRoom(Integer roomId, String guestName, String guestEmail, String guestNumber, Date dateStart, Date dateEnd) throws SQLException, ClassNotFoundException {
        Connection connection = ConnectionDAO.getConnection();
        String reserveRoom = "INSERT INTO Reservation (roomId, guestName, guestEmail, guestNumber, dateStart, dateEnd) values (?, ?, ?, ?, ?, ?)";
<<<<<<< HEAD
        PreparedStatement statement = connection.prepareStatement(reserveRoom);
        statement.setInt(1, roomId);
        statement.setString(2, guestName);
        statement.setString(3, guestEmail);
        statement.setString(4, guestNumber);
        statement.setDate(5, dateStart);
        statement.setDate(6, dateEnd);
        statement.executeUpdate();
        connection.close();
        statement.close();
    }

    @Override
    public ArrayList<Reservation> getDataReservation() throws SQLException, ClassNotFoundException {
        ArrayList<Reservation> arrayReservation = new ArrayList<>();
        Connection connection = ConnectionDAO.getConnection();
        String getDataReservation = "SELECT * FROM Reservation";
        PreparedStatement statement = connection.prepareStatement(getDataReservation);
        statementReservation(arrayReservation, statement);
        connection.close();
        statement.close();
        return arrayReservation;
    }

    @Override
    public void updateStateRoomReservation() throws SQLException, ClassNotFoundException {
        Connection connection = ConnectionDAO.getConnection();
        String refreshData = "UPDATE Room INNER JOIN Reservation ON Room.roomId = Reservation.roomId SET Room.roomAvailability = false WHERE Reservation.dateStart <= NOW() AND Reservation.dateEnd >= NOW()";
        PreparedStatement statement = connection.prepareStatement(refreshData);
        statement.executeUpdate();
        connection.close();
        statement.close();
    }
}
