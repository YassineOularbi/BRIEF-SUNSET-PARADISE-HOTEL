
<%@ page pageEncoding="UTF-8" %>
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
<div style="height:500px; position: relative; background: rgba(255, 255, 255, 0.7); top: 100px;" class="container rounded">
    <div style="position: absolute; left: 420px; top: 10px" >
        <h5>Welcome to the paradise sunset</h5>
        <p>Where you find your absolute happiness</p>
    </div>

    <div style="position:relative; top: 70px; left: 60px; width:770px; height: 400px; background: white" class="row justify-content-center align-items-center bg-light rounded">
        <div style="width: 400px; padding: 0" class="">
            <c:forEach var="room" items="${arrayRoom}">
            <div style="width: 370px; height: 400px;"  class="card">
                <img src="${room.getRoomPicture()}" class="card-img-top room-img" alt="Room Image">
                <div class="card-body">
                    <h2 class="text-dark">${room.getRoomType()}</h2>
                    <p class="card-text text-uppercase letter-spacing-1 text-warning">${room.getRoomPrice()} / per night</p>
                    <p class="card-text">Capacity : Max person ${room.getRoomCapacity()}</p>
                    <p class="card-text">Amenities : ${room.getRoomAmenities()}</p>


                </div>
            </div>

        </div>

        <div style="width: 370px; height: 400px; background: transparent; border: none;"  class="card">
            <h3 class="mt-3">Reserve your room</h3>
            <form action="reservation?roomId=${room.getRoomId()}" method="POST">
                <div class="form-group">
                    <label for="name">Full Name:</label>
                    <input type="text" class="form-control" id="name" name="name" required>
                </div>
                <div class="form-group">
                    <label for="email">Email Address:</label>
                    <input type="email" class="form-control" id="email" name="email" required>
                </div>
                <div class="form-group">
                    <label for="phone">Phone Number:</label>
                    <input type="tel" class="form-control" id="phone" name="phone" required>
                </div>
                <div class="row">
                    <div class="col-md-6 mb-2">
                        <label for="CheckIn">Check In</label>
                        <input class="form-control mt-1" type="date" id="start" name="checkIn" value="${checkIn}" min="2024-01-01" max="2030-12-31" />
                    </div>
                    <div class="col-md-6 mb-2 ">
                        <label for="CheckOut">Check Out</label>
                        <input class="form-control mt-1" type="date" id="End" name="checkOut" value="${checkOut}" min="2024-01-01" max="2030-12-31" />
                    </div>
                </div>

                <div class="row">
                    <button style="width: 160px; margin-left: 13px" type="submit" class="btn btn-warning mt-2 ">Reserve</button>

                    <button style="width: 160px; margin-left: 23px"  class="btn btn-outline-warning mt-2 ">Cancel</button>

                </div>
            </form>
        </div>
        </c:forEach>
    </div>
    <div style="position: absolute; top: 70px; left: 870px;" class="">
        <img style="width: 140px; margin-left: 40px;" src="https://i.ibb.co/hFYdn7p/light-logo.png">
        <p><span class="d-block mt-1">Address:</span> <h5 class="text-black"> 98 West 21th Street, Suite <br>721 New York NY 10016</h5></p>
        <p><span class="d-block">Phone:</span> <h5 class="text-black"> (+1) 435 3533</h5></p>
        <p><span class="d-block">Email:</span> <h5 class="text-black"> hotel@paradisesunset.com</h5></p>
        <div style="margin-left: 20%;">
            <img style="height: 30px" src="https://i.ibb.co/tCqtmV1/tripadvisor.png">
            <img style="height: 20px" src="https://i.ibb.co/pKxG8qq/11053970-x-logo-twitter-new-brand-icon.png">
            <img style="height: 30px" src="https://i.ibb.co/C7x7GsC/6047781-facebook-media-social-icon.png">
            <img style="height: 30px" src="https://i.ibb.co/9Wq04gj/5335781-camera-instagram-social-media-instagram-logo-icon.png">

        </div>
    </div>
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