package com.java.dao;

import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;

import com.java.beans.Room;

public interface RoomDAO {
	public ArrayList<Room> getDataRoom() throws SQLException, ClassNotFoundException;
	public ArrayList<Room> searchAvailableRoom() throws ClassNotFoundException, SQLException;
	public ArrayList<Room> searchAvailableRoom(Date dateStart, Date dateEnd, String roomType, Integer roomCapacity) throws ClassNotFoundException, SQLException;
	public ArrayList<Room> searchRoomById(Integer roomId) throws  SQLException, ClassNotFoundException;
	
}
