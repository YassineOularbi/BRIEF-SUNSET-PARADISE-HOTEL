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
<h1>Uploader une Image</h1>
    <form action="upload" method="post" enctype="multipart/form-data">
        <label for="file">Choisissez un fichier :</label>
        <input type="file" id="file" name="file" accept="image/*">
        <br><br>
        <input type="submit" value="Envoyer">
    </form>
<!-- Tableau pour afficher la liste des employés -->
        <table class="table">
            <thead>
                <tr>
                	<th scope="col">RoomId</th>
                    <th scope="col">RoomType</th>
                    <th scope="col">RoomPrice</th>
                    <th scope="col">RoomAmenities</th>
                    <th scope="col">RoomAvailibilty</th>
                    
                </tr>
            </thead>
            <tbody>
                <!-- Code JSP pour afficher la liste des employés -->
                <c:forEach var="room" items="${arrayRoom}">
    <tr>
        <td>${room.getRoomId()}</td>
        <td>${room.getRoomType()}</td>
        <td>${room.getRoomPrice()}</td>
        <td>${room.getRoomAmenities()}</td>
        <td><img src="https://images.nationalgeographic.org/image/upload/t_edhub_resource_key_image/v1652341068/EducationHub/photos/ocean-waves.jpg" style="width=100px; height=100px;" alt="googler"></td>
    </tr>
</c:forEach>

            </tbody>
        </table>
        <!-- Include Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>