<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 21/04/2024
  Time: 03:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hotel sunset paradise</title>
    <link rel="icon" href="https://i.ibb.co/hFYdn7p/light-logo.png" >
    <!-- bootstrap css link -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <!-- Font awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer">
    <!-- Css link -->
    <style><%@ include file="css/style.css" %></style>


    <link rel="stylesheet" href="css/style.css">
    <!-- BOX ICONS  -->
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
<!-- Navbar -->
<nav class="navbar fixed-top navbar-expand-lg py-0 mx-3 my-2 rounded" style="height: 45px;">
    <div class="container">
        <img class="navbar-brand me-auto" style="width: 60px" src="https://i.ibb.co/hFYdn7p/light-logo.png">
        <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
            <div class="offcanvas-header">
                <h5 class="offcanvas-title" id="offcanvasNavbarLabel">WELCOME TO HOTEL SUNSET PARADISE</h5>
                <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
                <ul class="navbar-nav justify-content-center flex-grow-1 pe-3">
                    <li class="nav-item active-menu">
                        <a href="${pageContext.request.contextPath}/home" class="nav-link text-dark mx-lg-2 mx-4" aria-current="page">Home</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle mx-lg-2 mx-4 text-dark" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Booking
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/room">Room</a></li>
                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/reservation">Reservation</a></li>
                            <li><a class="dropdown-item" href="#">Restaurant</a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-dark mx-lg-2 mx-4" href="#">Gallery</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-dark mx-lg-2 mx-4" href="#">Contact</a>
                    </li>
                </ul>
            </div>
        </div>
        <button href="${pageContext.request.contextPath}/searchavailableroom" style="background-color: #FFC803;" class="btn text-light border border-0 px-3 py-1 rounded mx-4">Book Now!</button>
        <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
    </div>
</nav>
<img class="bg-home me-auto overlay" style="width: 100%" src="https://i.ibb.co/CVJg7Ny/bg-home.jpg">
<section class="home">
    <h1 style="top: 80px;" class="welcome text-white heading">Reservations's Management</h1>
    <div style="top: 80px;" class="rounded m-5 check-availabilty" id="next">
        <form id="formCheck" method="post" action="searchavailableroom" class="form-checking row" >
            <div class="col-md-2 mb-2">
                <label for="dateStart">Date start</label>
                <input class="form-control mt-1" type="date" id="start" name="start" value="2024-01-01" min="2024-01-01" max="2030-12-31" />
            </div>
            <div class="col-md-2 mb-2 ">
                <label for="dateEnd">Date end</label>
                <input class="form-control mt-1" type="date" id="End" name="end" value="2024-01-01" min="2024-01-01" max="2030-12-31" />
            </div>
            <div class="col-md-2 mb-2">
                <label for="inputType">Type</label>
                <select class="form-control mt-1" id="roomType" name="inputType">
                    <option value="Select">SELECT</option>
                    <option value="Room">Room</option>
                    <option value="Suite">Suite</option>
                </select>
            </div>
            <div class="col-md-2 mb-2">
                <label for="inputState">State</label>
                <select class="form-control mt-1" id="state" name="state">
                    <option value="SELECT" >SELECT</option>
                    <option value="true" >Passed</option>
                    <option value="true" >in progress</option>
                    <option value="true" >Soon</option>
                    <option value="false" >Canceled</option>

                </select>
            </div>

            <button id="checkRoom"  style="background-color: #FFC803; height: 40px; width: 200px;" class="border-0 mx-5 mt-3 text-light rounded" style="background-color: #c57e0b;" type="submit" class="btn">Check Reservation</button>
        </form>
    </div>
<div style="position: absolute; top:250px; left: 37px;"  class="container rounded">
    <table style="width: 107%;" class="table table-striped mt-5 rounded">
        <thead style="padding: 10px">
        <tr>
            <th style="padding-left: 20px; border-top-left-radius: 10px">Reservation ID</th>
            <th>Room ID</th>
            <th>Guest Name</th>
            <th>Guest Email</th>
            <th>Guest Number</th>
            <th>Date Start</th>
            <th>Date End</th>
            <th style="border-top-right-radius: 10px" ></th>
        </tr>
        </thead>
        <tbody style="padding: 10px">
<c:forEach var="reservation" items="${arrayReservation}">
        <tr>
            <td style="padding-left: 20px">${reservation.getReservationId()}</td>
            <td>${reservation.getRoomId()}</td>
            <td>${reservation.getGuestName()}</td>
            <td>${reservation.getGuestEmail()}</td>
            <td>${reservation.getGuestNumber()}</td>
            <td>${reservation.getDateStart()}</td>
            <td>${reservation.getDateEnd()}</td>
            <td><a href="reservationdetails?reservationId=${reservation.getReservationId()}" type="button" class="btn btn-dark">Consult</a></td>
        </tr>
</c:forEach>

        </tbody>
    </table>
</div>
    <!-- JavaScript Link -->
    <script><%@ include file="js/script.js" %></script>
    <!-- JavaScript Link -->

    <!-- bootstrap js link -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>
    <!-- bootstrap js link -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

</body>
</html>

