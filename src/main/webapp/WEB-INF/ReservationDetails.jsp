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

    <h1 style="top: 80px;" class="welcome text-white heading">Reservation's details</h1>
    <section class="container mt-5">

            <div style="position:absolute; top:150px; left:150px; height:370px; width:950px;" class="hotel-room-card my-3">
                <div class="room-image">
                    <img src="${details.getRoomPicture()}" alt="Room Image">
                </div>
                <div style="height:300px" class="row">
                <h4 style="height: 50px;" class="mt-3 mx-3">Reservation Id : ${details.getReservationId()} 
    <c:choose>      
    <c:when test="${details.getIsInProgress()}">
        <span class="text-success">In Progress</span>
    </c:when>
    <c:otherwise>
        <span class="text-warning">Not in progress</span>
    </c:otherwise>
    </c:choose>
    </h4>
                <div style="margin-left: 20px; height:280px;" class="room-details m-2">
                    <h5>${details.getRoomType()}</h5>
                                        <p style="margin:0;" class="room-description">Capacity : Max person ${details.getRoomCapacity() }</p>
                    <p style="margin:0;" class="room-description">Amenities : ${details.getRoomAmenities() }</p>
                    <p style="margin:0;" class="room-description">Room State : <c:if test="${details.getRoomAvailability() eq true}">
                        <span class="text-success">Available</span>
                    </c:if>
                    <c:if test="${details.getRoomAvailability() ne true}">
                        <span class="text-danger">Reserved !</span>
                    </c:if></p>
                    <p style="margin:0;" class="room-description">Reservation State :
                        <c:choose>      
    <c:when test="${details.getIsInProgress()}">
        <span class="text-success">Confirmed</span>
    </c:when>
    <c:otherwise>
        <span class="text-warning">In process</span>
    </c:otherwise>
    </c:choose>
                    </p> 
                    <div class="room-price">
                        <span class="price">${details.getRoomPrice()} $</span>
                        <span class="per-night">/night</span>
                    </div>
                    <button style="width: 160px;" type="submit" class="btn btn-warning mt-2 ">Cancel</button>
                </div>
                <div style="margin-left: 20px; width:300px; padding-top:O;" class="room-details border-start m-2">
                <h5>Guest's info :</h5>
                    <p style="margin:0;" class="room-description">Name : ${details.getGuestName()}</p>
                    <p style="margin:0;" class="room-description">Email : ${details.getGuestEmail()}</p>
                    <p style="margin:0;" class="room-description">Number : ${details.getGuestNumber()}</p>
                    <div class="row">
                    <div class="col-md-8 mb-1">
                        <label for="CheckIn">Check In</label>
                        <input class="form-control mt-1" type="date" id="start" name="checkIn" value="${details.getDateStart()}" min="2024-01-01" max="2030-12-31" />
                    </div>
                    <div class="col-md-8 mb-1">
                        <label for="CheckOut">Check Out</label>
                        <input class="form-control mt-1" type="date" id="End" name="checkOut" value="${details.getDateEnd()}" min="2024-01-01" max="2030-12-31" />
                    </div>
                </div>
                    
                </div>
                </div>
                
            </div>

    </section>
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

