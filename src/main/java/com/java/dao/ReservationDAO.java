package com.java.dao;

import com.java.beans.Reservation;

import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;

public interface ReservationDAO {
    public void reserveRoom(Integer roomId, String guestName, String guestEmail, String guestNumber, Date dateStart, Date dateEnd) throws SQLException, ClassNotFoundException;
    public ArrayList<Reservation> getDataReservation() throws SQLException, ClassNotFoundException;
}
