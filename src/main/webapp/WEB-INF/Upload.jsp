<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Upload Image</title>
</head>
<body>
    <h1>Uploader une Image</h1>
    <form action="upload" method="post" enctype="multipart/form-data">
        <label for="file">Choisissez un fichier :</label>
        <input type="file" id="file" name="file" accept="image/*">
        <br><br>
        <input type="submit" value="Envoyer">
    </form>
</body>
</html>
