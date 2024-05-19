package com.java.dao;

import com.java.beans.Reservation;
import com.java.beans.ReservationDetails;


import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;

public interface ReservationDAO {

    public void reserveRoom(Integer roomId, String guestName, String guestEmail, String guestNumber, Date dateStart, Date dateEnd) throws SQLException, ClassNotFoundException;
    public ArrayList<Reservation> getDataReservation() throws SQLException, ClassNotFoundException;
    public void updateStateRoomReservation() throws SQLException, ClassNotFoundException;
    public ArrayList<ReservationDetails> reservationDetails (Integer reservationId) throws SQLException, ClassNotFoundException;

}
