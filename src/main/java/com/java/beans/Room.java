package com.java.beans;

public class Room {
	
	private Integer roomId;
	private String roomType;
	private Integer roomPrice;
	private Integer roomCapacity;
	private String roomAmenities;
	private String roomAvailability;
	private String roomPicture;
	
	public Room(Integer roomId, String roomType, Integer roomPrice, Integer roomCapacity, String roomAmenities,
			String roomAvailability, String roomPicture) {
		super();
		this.roomId = roomId;
		this.roomType = roomType;
		this.roomPrice = roomPrice;
		this.roomCapacity = roomCapacity;
		this.roomAmenities = roomAmenities;
		this.roomAvailability = roomAvailability;
		this.roomPicture = roomPicture;
	}

	public Integer getRoomId() {
		return roomId;
	}

	public void setRoomId(Integer roomId) {
		this.roomId = roomId;
	}

	public String getRoomType() {
		return roomType;
	}

	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}

	public Integer getRoomPrice() {
		return roomPrice;
	}

	public void setRoomPrice(Integer roomPrice) {
		this.roomPrice = roomPrice;
	}

	public Integer getRoomCapacity() {
		return roomCapacity;
	}

	public void setRoomCapacity(Integer roomCapacity) {
		this.roomCapacity = roomCapacity;
	}

	public String getRoomAmenities() {
		return roomAmenities;
	}

	public void setRoomAmenities(String roomAmenities) {
		this.roomAmenities = roomAmenities;
	}

	public String getRoomAvailability() {
		return roomAvailability;
	}

	public void setRoomAvailability(String roomAvailability) {
		this.roomAvailability = roomAvailability;
	}

	public String getRoomPicture() {
		return roomPicture;
	}

	public void setRoomPicture(String roomPicture) {
		this.roomPicture = roomPicture;
	}
	
	
}
