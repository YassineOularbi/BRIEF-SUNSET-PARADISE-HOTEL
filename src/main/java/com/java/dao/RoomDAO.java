package com.java.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import com.java.beans.Room;

public interface RoomDAO {
	public ArrayList<Room> getDataRoom() throws SQLException, ClassNotFoundException;
	public ArrayList<Room> searchAvailableRoom(String roomType, Integer roomCapacity) throws ClassNotFoundException, SQLException;
}
