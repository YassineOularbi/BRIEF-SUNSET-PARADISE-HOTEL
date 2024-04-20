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
                            <a href="#" class="nav-link text-dark mx-lg-2 mx-4" aria-current="page" href="#">Home</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle mx-lg-2 mx-4 text-dark" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Booking
                            </a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="room">Room</a></li>
                                <li><a class="dropdown-item" href="#">Reservation</a></li>
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
            <button href="" style="background-color: #FFC803;" class="btn text-light border border-0 px-3 py-1 rounded mx-4">Book Now!</button>
            <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>
    </nav>
    <img class="bg-home me-auto overlay" style="width: 100%" src="https://i.ibb.co/CVJg7Ny/bg-home.jpg">
    <section class="home">
        
        <h1 style="top: 80px;" class="welcome text-white heading">Discover our available rooms for reservation</h1>
            <div style="top: 80px;" class="rounded m-5 check-availabilty" id="next">
                <form id="formCheck" method="post" action="searchavailableroom" class="form-checking row" >
                    <div class="col-md-2 mb-2">
                        <label for="CheckIn">Check In</label>
                        <input class="form-control mt-1" type="date" id="start" name="checkIn" value="${checkIn}" min="2024-01-01" max="2030-12-31" />
                    </div>
                    <div class="col-md-2 mb-2 ">
                        <label for="CheckOut">Check In</label>
                        <input class="form-control mt-1" type="date" id="End" name="checkOut" value="${checkOut}" min="2024-01-01" max="2030-12-31" />
                    </div>
                    <div class="col-md-2 mb-2">
                        <label for="inputAType">Type</label>
                        <select class="form-control mt-1" id="roomType" name="inputType">
                            <option value="Room" ${inputType eq 'Room' ? 'selected' : ''}>Room</option>
                            <option value="Suite" ${inputType eq 'Suite' ? 'selected' : ''}>Suite</option>
                        </select>
                    </div>
                    <div class="col-md-1 mb-2">
                        <label for="inputAdulte">Adults</label>
                        <select class="form-control mt-1" id="inputAdults" name="adults">
                            <option value="1" ${inputAdults eq '1' ? 'selected' : ''}>1</option>
                            <option value="2" ${inputAdults eq '2' ? 'selected' : ''}>2</option>
                            <option value="3" ${inputAdults eq '3' ? 'selected' : ''}>3</option>
                            <option value="4" ${inputAdults eq '4' ? 'selected' : ''}>4</option>
                            <option value="5" ${inputAdults eq '5' ? 'selected' : ''}>5+</option>
                        </select>
                    </div>
                    <div class="col-md-1 mb-2">
                        <label for="inputChildrens">Childrens</label>
                        <select class="form-control mt-1" id="inputChildrens" name="childrens">
                            <option value="0" ${inputChildrens eq '0' ? 'selected' : ''}>0</option>
                            <option value="1" ${inputChildrens eq '1' ? 'selected' : ''}>1</option>
                            <option value="2" ${inputChildrens eq '2' ? 'selected' : ''}>2</option>
                            <option value="3" ${inputChildrens eq '3' ? 'selected' : ''}>3</option>
                            <option value="4" ${inputChildrens eq '4' ? 'selected' : ''}>4+</option>
                        </select>
                    </div>
                    <button id="checkRoom"  style="background-color: #FFC803; height: 40px; width: 200px;" class="border-0 mx-5 mt-3 text-light rounded" style="background-color: #c57e0b;" type="submit" class="btn">Check Availabilty</button>
                </form>
              </div>
                  <div class="card-room">
                      <div class="row justify-content-center">
        <c:forEach var="room" items="${arrayRoom}">

                <div class="card room-card">
                    <img src="https://i.ibb.co/grF3Cnp/junior.jpg" class="card-img-top room-img" alt="Room Image">
                    <div class="card-body">
                        <h2 class="text-dark">${room.getRoomType()}</h2>
                        <span class="text-uppercase letter-spacing-1 text-warning">${room.getRoomPrice()}$ / per night</span>
                        <p class="card-text">Capacity : Max person ${room.getRoomCapacity()}</p>
                        <p class="card-text">Amenities : ${room.getRoomAmenities()}</p>
                        <p class="card-text">Availability :  ${room.getRoomAvailability()}</p>
                    </div>
                    <c:if test="${room.getRoomAvailability() eq true}">
                        <button class="btn btn-warning">Book</button>
                    </c:if>
                    <c:if test="${room.getRoomAvailability() ne true}">
                        <button class="btn btn-danger">Reserved!</button>
                    </c:if>
                    </div>



        </c:forEach>
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