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
        PreparedStatement statementReserve = connection.prepareStatement(reserveRoom);
        statementReserve.setInt(1, roomId);
        statementReserve.setString(2, guestName);
        statementReserve.setString(3, guestEmail);
        statementReserve.setString(4, guestNumber);
        statementReserve.setDate(5, dateStart);
        statementReserve.setDate(6, dateEnd);
        statementReserve.executeUpdate();
        String disableAvailabilityRoom = "UPDATE Room SET roomAvailability = ? WHERE roomId = ?";
        PreparedStatement statementRoom = connection.prepareStatement(disableAvailabilityRoom);
        statementRoom.setBoolean(1, false);
        statementRoom.setInt(2, roomId);
        statementRoom.executeUpdate();
        connection.close();
        statementReserve.close();
        statementRoom.close();
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
}
