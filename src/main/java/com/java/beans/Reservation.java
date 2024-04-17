package com.java.beans;

import java.sql.Date;

public class Reservation {
	
	private Integer reservationId;
	private Integer roomId;
	private String guestName;
	private Date dateStart;
	private Date dateEnd;
	
	public Reservation(Integer reservationId, Integer roomId, String guestName, Date dateStart, Date dateEnd) {
		super();
		this.reservationId = reservationId;
		this.roomId = roomId;
		this.guestName = guestName;
		this.dateStart = dateStart;
		this.dateEnd = dateEnd;
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
	
	
	
}
