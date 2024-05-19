package com.java.beans;

import java.sql.Date;

public class ReservationDetails {
	private Integer reservationId;
	private Integer roomId;
	private String guestName;
	private String guestEmail;
	private String guestNumber;
	private Date dateStart;
	private Date dateEnd;
	private String roomType;
	private Integer roomPrice;
	private Integer roomCapacity;
	private String roomAmenities;
	private Boolean roomAvailability;
	private String roomPicture;
	private Boolean isInProgress;
	
	
	public ReservationDetails(Integer reservationId, Integer roomId, String guestName, String guestEmail,
			String guestNumber, Date dateStart, Date dateEnd, String roomType, Integer roomPrice, Integer roomCapacity,
			String roomAmenities, Boolean roomAvailability, String roomPicture, Boolean isInProgress) {
		super();
		this.reservationId = reservationId;
		this.roomId = roomId;
		this.guestName = guestName;
		this.guestEmail = guestEmail;
		this.guestNumber = guestNumber;
		this.dateStart = dateStart;
		this.dateEnd = dateEnd;
		this.roomType = roomType;
		this.roomPrice = roomPrice;
		this.roomCapacity = roomCapacity;
		this.roomAmenities = roomAmenities;
		this.roomAvailability = roomAvailability;
		this.roomPicture = roomPicture;
		this.isInProgress = isInProgress;
	}
	public Integer getReservationId() {
		return reservationId;
	}
	public void setReservationId(Integer reservationId) {
		this.reservationId = reservationId;
	}
	public Integer getRoomId() {
		return roomId;
	}
	public void setRoomId(Integer roomId) {
		this.roomId = roomId;
	}
	public String getGuestName() {
		return guestName;
	}
	public void setGuestName(String guestName) {
		this.guestName = guestName;
	}
	public String getGuestEmail() {
		return guestEmail;
	}
	public void setGuestEmail(String guestEmail) {
		this.guestEmail = guestEmail;
	}
	public String getGuestNumber() {
		return guestNumber;
	}
	public void setGuestNumber(String guestNumber) {
		this.guestNumber = guestNumber;
	}
	public Date getDateStart() {
		return dateStart;
	}
	public void setDateStart(Date dateStart) {
		this.dateStart = dateStart;
	}
	public Date getDateEnd() {
		return dateEnd;
	}
	public void setDateEnd(Date dateEnd) {
		this.dateEnd = dateEnd;
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
	public Boolean getRoomAvailability() {
		return roomAvailability;
	}
	public void setRoomAvailability(Boolean roomAvailability) {
		this.roomAvailability = roomAvailability;
	}
	public String getRoomPicture() {
		return roomPicture;
	}
	public void setRoomPicture(String roomPicture) {
		this.roomPicture = roomPicture;
	}
	public Boolean getIsInProgress() {
		return isInProgress;
	}
	public void setIsInProgress(Boolean isInProgress) {
		this.isInProgress = isInProgress;
	}
	
}
