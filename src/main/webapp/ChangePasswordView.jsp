<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Change Password</title>
<!-- Include Bootstrap for easy styling -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<style>
  /* Gradient background */
  body {
    background-color: #0093E9;
    background-image: linear-gradient(160deg, #0093E9 0%, #80D0C7 100%);
    margin: 0;
    padding: 0;
  }

  /* Card layout for the form */
  .form-card {
    max-width: 500px;
    margin: 50px auto;
    padding: 20px;
    background-color: white;
    border-radius: 10px;
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  }

  /* Form styling */
  .form-group {
    margin-bottom: 15px;
  }

  .form-label {
    font-weight: bold;
  }

  /* Button styling */
  .btn {
    width: 100%;
    padding: 10px;
    text-align: center;
    background-color: #0093E9;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    text-transform: uppercase;
    transition: all 0.3s ease;
  }

  .btn:hover {
    background-color: #80D0C7;
  }

</style>
</head>
<body>
<nav class="navbar navbar-expand-lg bg-body-tertiary">
              <div class="container-fluid">
                  <img src=https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbpNOa28LDU8ww4UAGZehe5aAtUlbfjmJZTzyaxFKp-w&s style="width: 4%;height: 2%; padding-left: 10px;" alt="img">
                <div class="collapse navbar-collapse" id="navbarNavAltMarkup" style="padding-left: 930px;">
                  <div class="navbar-nav" style="padding-left:20px;">
                    <a class="nav-link" href="HomeView.jsp" style="color: black; font-weight: 600; font-size: 1.3rem;"><i class="fa-solid fa-house"></i> Home</a>
                    <a class="nav-link" href="About.jsp" style="color:black;font-weight: 600;font-size: 1.3rem;"><i class="fa-solid fa-magnifying-glass"></i> About Us</a>
                    <a class="nav-link" href="Contactus.jsp" style="color: black;font-weight: 600;font-size: 1.3rem;"><i class="fa-solid fa-headphones"></i> Contact</a>
                    <a class="nav-link" href="Dashboard.jsp" style="color: black;font-weight: 600;font-size: 1.3rem;"><i class="fa-solid fa-handshake-angle"></i> Dashboard</a>
                  </div>
                </div>
              </div>
            </nav>
<div class="form-card">
  <h2 style="text-align:center;">Change Password</h2>
  <form action="ChangePassword" method="post">
    <div class="form-group">
      <label class="form-label" for="oldPass">Old Password:</label>
      <input type="password" id="oldPass" name="oldPass" class="form-control" placeholder="Enter old password">
    </div>
    <div class="form-group">
      <label class="form-label" for="newPass">New Password:</label>
      <input type="password" id="newPass" name="newPass" class="form-control" placeholder="Enter new password">
    </div>
    <button type="submit" class="btn">Change Pass</button>
  </form>
     
    
</div>
<!-- Include optional Bootstrap scripts -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
</body>
</html>