package com.java.beans;

import java.sql.Date;

public class Reservation {
	
	private Integer reservationId;
	private Integer roomId;
	private String guestName;
	private String guestEmail;
	private String guestNumber;
	private Date dateStart;
	private Date dateEnd;

	public Reservation(Integer reservationId, Integer roomId, String guestName, String guestEmail, String guestNumber, Date dateStart, Date dateEnd) {
		this.reservationId = reservationId;
		this.roomId = roomId;
		this.guestName = guestName;
		this.guestEmail = guestEmail;
		this.guestNumber = guestNumber;
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
}
