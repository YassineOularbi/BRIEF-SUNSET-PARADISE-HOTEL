package com.java.dao;

import java.sql.*;
import java.util.ArrayList;

import com.java.beans.Room;

public class RoomDAOImpl implements RoomDAO {
	
	public static void statementRoom(ArrayList<Room> arrayRoom, PreparedStatement statement) throws SQLException {
        ResultSet resultSet = statement.executeQuery();
        while (resultSet.next()) {;
			Integer id = (resultSet.getInt("roomId"));
            String type =  (resultSet.getString("roomType"));
            Integer price = (resultSet.getInt("roomPrice"));
            Integer capacity = (resultSet.getInt("roomCapacity"));
            String amenities = (resultSet.getString("roomAmenities"));
            Boolean availability = (resultSet.getBoolean("roomAvailability"));
            String picture = (resultSet.getString("roomPicture"));
            arrayRoom.add(new Room(id, type, price, capacity, amenities, availability, picture));
        }
    }

	@Override
	public ArrayList<Room> getDataRoom() throws SQLException, ClassNotFoundException {
		ArrayList<Room> arrayRoom = new ArrayList<>();
        Connection connection = ConnectionDAO.getConnection();
        String getDataRoom = "SELECT * FROM Room";
        PreparedStatement statement = connection.prepareStatement(getDataRoom);
        statementRoom(arrayRoom, statement);
        connection.close();
        statement.close();
        return arrayRoom;
	}

    @Override
    public ArrayList<Room> searchAvailableRoom() throws ClassNotFoundException, SQLException {
        ArrayList<Room> arrayRoom = new ArrayList<>();
        Connection connection = ConnectionDAO.getConnection();
        String SearchAvailableRoom = "SELECT * FROM Room WHERE roomAvailability = ?";
        PreparedStatement statement = connection.prepareStatement(SearchAvailableRoom);
        statement.setBoolean(1, true);
        statementRoom(arrayRoom, statement);
        connection.close();
        statement.close();
        return arrayRoom;
    }

    @Override

	public ArrayList<Room> searchAvailableRoom(Date dateStart, Date dateEnd, String roomType, Integer roomCapacity) throws ClassNotFoundException, SQLException{
		ArrayList<Room> arrayRoom = new ArrayList<>();
        Connection connection = ConnectionDAO.getConnection();
        String SearchAvailableRoom = "SELECT * FROM Room WHERE roomAvailability = ?  AND (roomType LIKE ?  OR roomCapacity >= ?)";
        PreparedStatement statement = connection.prepareStatement(SearchAvailableRoom);
        statement.setBoolean(1, true);
        statement.setString(2, "%" + roomType + "%");
        statement.setInt(3, roomCapacity);
        //statement.setDate(4, dateStart);
        //statement.setDate(5, dateEnd);
        statementRoom(arrayRoom, statement);
        connection.close();
        statement.close();
		return arrayRoom;

	}

    @Override
    public ArrayList<Room> searchRoomById(Integer roomId) throws SQLException, ClassNotFoundException {
        ArrayList<Room> arrayRoom = new ArrayList<>();
        Connection connection = ConnectionDAO.getConnection();
        String SearchRoomById = "SELECT * FROM Room WHERE roomId = ?";
        PreparedStatement statement = connection.prepareStatement(SearchRoomById);
        statement.setInt(1, roomId);
        statementRoom(arrayRoom, statement);
        connection.close();
        statement.close();
        return arrayRoom;
    }


}

