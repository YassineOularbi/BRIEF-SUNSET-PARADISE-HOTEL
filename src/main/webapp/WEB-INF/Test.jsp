<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Hotel Sunset Paradise</title>
	<!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<!-- Formulaire de recherche et de filtrage -->
        <form action="searchavailableroom" method="POST" class="mb-3">
            <div class="form-row">
	            <div class="col-md-4 mb-3">
	                    <label for="inputSearch">Search by id</label>
	                    <input type="Number" class="form-control" id="inputSearch" name="inputSearch">
	                </div>
	            <div class="col-md-4 mb-3">
						<label for="inputType">Filtre by type</label>
							<select class="form-control" id="inputType" name="inputType">
							    <!-- Options pour les postes -->
							    <option value="">All Types</option>
							    <option value="Single Room">Single Room</option>
							    <option value="Double Room">Double Room</option>
							    <option value="Family Room">Family Room</option>
							</select>
	                </div>
	                <div class="col-md-4 mb-3">
	                    <label for="inputCapacity">Filtre by CapacityCapacity</label>
		                    <select class="form-control" id="inputCapacity" name="inputCapacity">
							    <!-- Options pour les départements -->
							    <option value="">All Capacities</option>
							    <option value="1">1</option>
							    <option value="2">2</option>
							    <option value="3">3</option>

							</select>
					</div>
           		</div>
            <button type="submit" class="btn btn-primary">Rechercher</button>
        </form>
<!-- Tableau pour afficher la liste des employés -->
        <table class="table">
            <thead>
                <tr>
                	<th scope="col">RoomId</th>
                    <th scope="col">RoomType</th>
                    <th scope="col">RoomPrice</th>
                    <th scope="col">roomCapacity</th>
                    <th scope="col">RoomAmenities</th>
                    <th scope="col">RoomAvailibilty</th>
                    <th scope="col">roomPicture</th>
                    
                    
                </tr>
            </thead>
            <tbody>
                <!-- Code JSP pour afficher la liste des employés -->
                <c:forEach var="room" items="${arrayRoom}">
    <tr>
        <td>${room.getRoomId()}</td>
        <td>${room.getRoomType()}</td>
        <td>${room.getRoomPrice()}</td>
		<td>${room.getRoomCapacity()}</td>
        <td>${room.getRoomAmenities()}</td>
        <td>
                    <c:if test="${room.getRoomAvailability() eq true}">
                        Yes
                    </c:if>
                    <c:if test="${room.getRoomAvailability() ne true}">
                        No
                    </c:if>
         </td>
        <td>${room.getRoomPicture()}</td>
   </tr>
</c:forEach>

            </tbody>
        </table>
        <!-- Include Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>