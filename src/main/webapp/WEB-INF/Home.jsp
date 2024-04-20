<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        
        <span id="welcome" class="welcome custom-caption text-uppercase text-white d-block  mb-3">Welcome To 5 <img style="height: 15px; margin-bottom: 5px;" src="https://i.ibb.co/JkBdm7t/star.png" alt="star">   Hotel</span>
        <h1 id="welcome" class="welcome text-white heading">A Best Place To Stay</h1>
            <div class="rounded m-5 check-availabilty" id="next">
                <form id="formCheck" method="post" action="searchavailableroom" class="form-checking row" >
                    <div class="col-md-2 mb-2">
                        <label for="CheckIn">Check In</label>
                        <input class="form-control mt-1" type="date" id="start" name="checkIn" value="2024-04-19" min="2024-01-01" max="2030-12-31" />
                    </div>
                    <div class="col-md-2 mb-2 ">
                        <label for="CheckOut">Check In</label>
                        <input class="form-control mt-1" type="date" id="End" name="checkOut" value="2024-04-19" min="2024-01-01" max="2030-12-31" />
                    </div>
                    <div class="col-md-2 mb-2">
                        <label for="inputAType">Type</label>
                        <select class="form-control mt-1" id="roomType" name="inputType">
                            <option value="Room">Room</option>
                            <option value="Suite">Suite</option>
                        </select>
                    </div>
                    <div class="col-md-1 mb-2">
                        <label for="inputAdulte">Adults</label>
                        <select class="form-control mt-1" id="inputAdults" name="adults">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5+</option>
                        </select>
                    </div>
                    <div class="col-md-1 mb-2">
                        <label for="inputChildrens">Childrens</label>
                        <select class="form-control mt-1" id="inputChildrens" name="childrens">
                            <option value="0">0</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4+</option>
                        </select>
                    </div> 
                    <button id="checkRoom"  style="background-color: #FFC803; height: 40px; width: 200px;" class="border-0 mx-5 mt-3 text-light rounded" style="background-color: #c57e0b;" type="submit" class="btn">Check Availabilty</button>
                </form>
              </div>
              <section class="bg-light rooms">
                <div class="container">
                  <div class="row justify-content-center text-center mb-5">
                    <div class="col-md-7">
                      <h2 class="mt-5" >Rooms &amp; Suites</h2>
                      <p  class="mt-4">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
                    </div>
                  </div>
                  <div class="row">

                    <div class="col-md-6 col-lg-4" >
                        <a href="#" class="room">
                          <figure class="img-wrap">
                            <img src="https://i.ibb.co/gwMW1XC/single.jpg"  class="img-fluid mb-3">
                          </figure>
                          <div class="p-3 text-center">
                            <h2 class="text-dark">Single Room</h2>
                            <span class="text-uppercase letter-spacing-1 text-warning">100$ / per night</span>
                          </div>
                        </a>
                      </div>

                  <div class="col-md-6 col-lg-4" >
                    <a href="#" class="room">
                      <figure class="img-wrap">
                        <img src="https://i.ibb.co/qDc3YMQ/double.jpg"  class="img-fluid mb-3">
                      </figure>
                      <div class="p-3 text-center">
                        <h2 class="text-dark">Double Room</h2>
                        <span class="text-uppercase letter-spacing-1 text-warning">150$ / per night</span>
                      </div>
                    </a>
                  </div>

                  <div class="col-md-6 col-lg-4" >
                    <a href="#" class="room">
                      <figure class="img-wrap">
                        <img src="https://i.ibb.co/RYz223Q/family.jpg"  class="img-fluid mb-3">
                      </figure>
                      <div class="p-3 text-center">
                        <h2 class="text-dark">Family Room</h2>
                        <span class="text-uppercase letter-spacing-1 text-warning">200$ / per night</span>
                      </div>
                    </a>
                  </div>

                  <div class="col-md-6 col-lg-4" >
                    <a href="#" class="room">
                      <figure class="img-wrap">
                        <img src="https://i.ibb.co/grF3Cnp/junior.jpg"  class="img-fluid mb-3">
                      </figure>
                      <div class="p-3 text-center">
                        <h2 class="text-dark">Junior Suite</h2>
                        <span class="text-uppercase letter-spacing-1 text-warning">180$ / per night</span>
                      </div>
                    </a>
                  </div>

                  <div class="col-md-6 col-lg-4" >
                    <a href="#" class="room">
                      <figure class="img-wrap">
                        <img src="https://i.ibb.co/cX3RRdp/family-suite.jpg"  class="img-fluid mb-3">
                      </figure>
                      <div class="p-3 text-center">
                        <h2 class="text-dark">Deluxe Suite</h2>
                        <span class="text-uppercase letter-spacing-1 text-warning">400$ / per night</span>
                      </div>
                    </a>
                  </div>

                  <div class="col-md-6 col-lg-4" >
                    <a href="#" class="room">
                      <figure class="img-wrap">
                        <img src="https://i.ibb.co/KwyXBhB/luxary.jpg"  class="img-fluid mb-3">
                      </figure>
                      <div class="p-3 text-center">
                        <h2 class="text-dark">Luxary Room</h2>
                        <span class="text-uppercase letter-spacing-1 text-warning">150$ / per night</span>
                      </div>
                    </a>
                  </div>

                  <div class="col-md-6 col-lg-4" >
                    <a href="#" class="room">
                      <figure class="img-wrap">
                        <img src="https://i.ibb.co/Q8sHZGC/deluxe.jpg"  class="img-fluid mb-3">
                      </figure>
                      <div class="p-3 text-center">
                        <h2 class="text-dark">Family Suite</h2>
                        <span class="text-uppercase letter-spacing-1 text-warning">350$ / per night</span>
                      </div>
                    </a>
                  </div>

                  <div class="col-md-6 col-lg-4" >
                    <a href="#" class="room">
                      <figure class="img-wrap">
                        <img src="https://i.ibb.co/1QF5BxB/panthouse.jpg"  class="img-fluid mb-3">
                      </figure>
                      <div class="p-3 text-center">
                        <h2 class="text-dark">Panthouse Suite</h2>
                        <span class="text-uppercase letter-spacing-1 text-warning">800$ / per night</span>
                      </div>
                    </a>
                  </div>

                  <div class="col-md-6 col-lg-4" >
                    <a href="#" class="room">
                      <figure class="img-wrap">
                        <img src="https://i.ibb.co/SdKxvGS/presedential.jpg"  class="img-fluid mb-3">
                      </figure>
                      <div class="p-3 text-center">
                        <h2 class="text-dark">Presedential Suite</h2>
                        <span class="text-uppercase letter-spacing-1 text-warning">500$ / per night</span>
                      </div>
                    </a>
                  </div>

                </div>
                </div>

              </section>

              <section class="reserve">
                <div class="container">
                  <div class="row align-items-center">
                    <div class="col-12 col-md-6 text-center mb-4 mb-md-0 text-md-left">
                      <h2 class="text-white font-weight-bold">A Best Place To Stay. Reserve Now!</h2>
                    </div>
                    <div class="col-12 col-md-6 text-center">
                        <form method="post" action="room">
                            <button type="submit" class="button-reserve py-3 mx-5 text-white px-5">Reserve Now</button>
                        </form>

                    </div>
                  </div>
                </div>
              </section>
    </section>
     <!-- JavaScript Link -->

    <script type="text/javascript">
    /*document.querySelector("#formCheck").addEventListener('submit', (event)=>{

    	document.querySelectorAll(".welcome").style.display = "none";
    	console.log("okkkk");
    })*/
    
    </script>
    <!-- JavaScript Link -->

    <!-- bootstrap js link -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
    <!-- bootstrap js link -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</body>
</html>