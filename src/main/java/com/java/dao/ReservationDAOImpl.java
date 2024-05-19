package com.java.dao;

import com.java.beans.Reservation;
import com.java.beans.ReservationDetails;



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
        String reserveRoom = "INSERT INTO Reservation (roomId, guestName, guestEmail, guestNumber, dateStart, dateEnd, isInProgress) values (?, ?, ?, ?, ?, ?, ?)";
        PreparedStatement statement = connection.prepareStatement(reserveRoom);
        statement.setInt(1, roomId);
        statement.setString(2, guestName);
        statement.setString(3, guestEmail);
        statement.setString(4, guestNumber);
        statement.setDate(5, dateStart);
        statement.setDate(6, dateEnd);
        statement.setBoolean(7, false);
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
        String CancelAutoReserve = "UPDATE Room INNER JOIN Reservation ON Room.roomId = Reservation.roomId SET Room.roomAvailability = true, Reservation.isInProgress = false WHERE Reservation.dateStart >= NOW() AND Reservation.dateEnd <= NOW()";
        PreparedStatement statementCancel = connection.prepareStatement(CancelAutoReserve);
        String setAutoReserve = "UPDATE Room INNER JOIN Reservation ON Room.roomId = Reservation.roomId SET Room.roomAvailability = false, Reservation.isInProgress = true WHERE Reservation.dateStart <= NOW() AND Reservation.dateEnd >= NOW()";
        PreparedStatement statementReserve = connection.prepareStatement(setAutoReserve);
        statementCancel.executeUpdate();
        statementReserve.executeUpdate();
        connection.close();
        statementCancel.close();
        statementReserve.close();
    }
	@Override
	public ArrayList<ReservationDetails> reservationDetails(Integer reservationId) throws SQLException, ClassNotFoundException {
		ArrayList<ReservationDetails> reservationDetails = new ArrayList<>();
		Connection connection = ConnectionDAO.getConnection();
		String details = "SELECT Reservation.reservationId, Reservation.roomId, Reservation.guestName, Reservation.guestEmail, Reservation.guestNumber, Reservation.dateStart, Reservation.dateEnd, Reservation.isInProgress,  Room.roomType, Room.roomCapacity, Room.roomPrice, Room.roomAmenities, Room.roomAvailability, Room.roomPicture FROM Reservation INNER JOIN Room ON Room.roomId = Reservation.roomId WHERE Reservation.reservationId = ?";
        PreparedStatement statement = connection.prepareStatement(details);
        statement.setInt(1, reservationId);
        ResultSet resultSet = statement.executeQuery();
        while (resultSet.next()) {
            Integer resId = (resultSet.getInt("reservationId"));
            Integer roomId = (resultSet.getInt("roomId"));
            String guestName =  (resultSet.getString("guestName"));
            String guestEmail = (resultSet.getString("guestEmail"));
            String guestNumber = (resultSet.getString("guestNumber"));
            Date dateStart = (resultSet.getDate("dateStart"));
            Date dateEnd = (resultSet.getDate("dateEnd"));
            Boolean isInProgress = (resultSet.getBoolean("isInProgress"));
            String type =  (resultSet.getString("roomType"));
            Integer price = (resultSet.getInt("roomPrice"));
            Integer capacity = (resultSet.getInt("roomCapacity"));
            String amenities = (resultSet.getString("roomAmenities"));
            Boolean availability = (resultSet.getBoolean("roomAvailability"));
            String picture = (resultSet.getString("roomPicture"));
            reservationDetails.add(new ReservationDetails(resId, roomId, guestName, guestEmail, guestNumber, dateStart, dateEnd, type, price, capacity, amenities, availability, picture, isInProgress));
        }
		return reservationDetails;
	}
}
