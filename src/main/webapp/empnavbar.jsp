<!DOCTYPE html>
<html>
<head>
    <title>Spring Boot</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
        }
        h2 {
            color: #007BFF;
            margin: 20px 0;
        }
        .navbar {
            display: flex;
            justify-content: center;
            background-color: #007BFF;
            padding: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .navbar a {
            color: white;
            text-decoration: none;
            padding: 10px 20px;
            margin: 0 5px;
            font-weight: bold;
            border-radius: 5px;
            transition: background-color 0.3s, transform 0.2s;
        }
        .navbar a:hover {
            background-color: #0056b3;
            transform: scale(1.05);
        }
        .navbar a.active {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h2 align="center">Spring Boot MVC SDP Project</h2>
    <div class="navbar">
        <a href="emphome" class="active">Home</a>
        <a href="empprofile">My Profile</a>
        <a href="updateemp">Update Profile</a>
        <a href="viewempsbydept">View Students By Department</a>
        <a href="empcontactus">Contact Us</a>
        <a href="emplogout">Logout</a>
    </div>
</body>
</html>