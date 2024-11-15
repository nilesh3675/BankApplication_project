<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<style>
    *{
        margin: 0;
        padding: 0;
    }
    body {
        font-family: Arial, sans-serif;
        background-color: #0093E9;
    }

    .topnav {
        overflow: hidden;
        background-color: white;
        
    }

    .topnav a {
        float: left;
        display: block;
        color: black;
        text-align: center;
        padding: 14px 20px;
        text-decoration: none;
        font-size: 17px;
        margin-left:250px;
    }

    .card {
        width: 200px; 
        background-color: #ffffff;
        border-radius: 10px;
        padding: 10px;
        margin: 20px 40px; 
        margin-left:320px;
        margin-top:200px;
        float: left; 
    }

    .card a {
        display: block;
        text-align: center;
        padding: 5px;
        background-color: #0093E9;
        color: #ffffff;
        text-decoration: none;
        border-radius: 5px;
    }

    .card img {
        width: 100%; /* Make the image fill the card */
        border-radius: 10px; /* Add border-radius to match card */
    }
</style>
</head>
<body>
    <div style="background-color: grey;">
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <div class="container-fluid">
                <img src=https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbpNOa28LDU8ww4UAGZehe5aAtUlbfjmJZTzyaxFKp-w&s style="width: 4%;height: 2%; padding-left: 10px;" alt="img">
              <div class="collapse navbar-collapse" id="navbarNavAltMarkup" style="margin-left: 955px;">
                <div class="navbar-nav" style="padding-left:20px;">
                  <a class="nav-link" href="HomeView.jsp" style="color: black; font-weight: 600; font-size: 1.3rem;"><i class="fa-solid fa-house"></i> Home</a>
                  <a class="nav-link" href="About.jsp" style="color:black;font-weight: 600;font-size: 1.3rem;"><i class="fa-solid fa-magnifying-glass"></i> About Us</a>
                  <a class="nav-link" href="Contactus.jsp" style="color: black;font-weight: 600;font-size: 1.3rem;"><i class="fa-solid fa-headphones"></i> Contact</a>
                  <a class="nav-link" href="Dashboard.jsp" style="color: black;font-weight: 600;font-size: 1.3rem;"><i class="fa-solid fa-handshake-angle"></i> Dashboard</a>
                </div>
              </div>
            </div>
          </nav>
       </div>
<div class="card">
    <img src="https://static.vecteezy.com/system/resources/previews/027/381/946/original/glossy-register-now-button-register-here-register-now-badge-emblem-seal-push-button-realistic-3d-shiny-registration-button-reflection-design-element-isolated-on-white-background-vector.jpg" alt="Image">
    <a href="RegisterView.jsp">Register</a>
</div>

<div class="card">
    <img src="https://static.vecteezy.com/system/resources/thumbnails/041/731/093/small_2x/login-icon-vector.jpg" alt="Image">
    <a href="Login.jsp">Login</a>
</div>

</body>
</html>