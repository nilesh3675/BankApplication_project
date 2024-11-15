<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Navigation Cards</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<style>
    *{
        padding: 0;
        margin: 0;
    }
    /* Flexbox container to center the cards */
    body {
        background-color: #0093E9;
    }


    /* Card container */
    .card-container {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        align-items: center; /* Center vertically */
        gap: 20px;
        padding: 150px;
    }

    /* Individual card */
   .card {
    width: 200px; /* Adjust the width as needed */
    height: 250px; /* Adjust the height as needed */
    padding: 20px;
    text-align: center;
    background-color: #ffffff;
    border-radius: 5px;
    color: #333;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    border: 1px solid #ddd; /* Add border style */
    margin: 10px; /* Add margin to separate the boxes */
}


.card a {
    text-decoration: none;
    color: #333;
    margin-top: 10px; /* Adjust the margin as needed */
}

.card img {
    width: 100%;
    border-radius: 5px 5px 0 0;
}
  
  /* Button styles */
.card button {
    /* Green */
    background-color:#0093E9;
    color: black !important;
    padding: 10px 20px;
    text-align: center;
    display: inline-block;
    font-size: 16px;
    margin-top: 5px;
    cursor: pointer;
    border-radius: 5px;
}

/* Button hover effect */
.card button:hover {
    background-color: #45a049; /* Darker green */
}
    
   
</style>
</head>
<body>
    <!-- Navigation bar -->
    <div style="background-color: grey;">
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <div class="container-fluid">
                <img src=https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbpNOa28LDU8ww4UAGZehe5aAtUlbfjmJZTzyaxFKp-w&s style="width: 4%;height: 2%; padding-left: 10px;" alt="img">
              <div class="collapse navbar-collapse" id="navbarNavAltMarkup" style="margin-left: 930px;">
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
    <!-- Card container -->
    <div class="card-container">
        <!-- Cards -->
        <div class="card">
            <a href="Recharge.jsp">
                <img src="https://i.pinimg.com/originals/40/2b/32/402b32f46795c98778bebd73d0e5c8b7.jpg" alt="Image 1">
                
            </a>
            <button onclick="location.href='Recharge.jsp';">Recharge</button>
            
        </div>
        <div class="card">
            <a href="TransactionView.jsp">
                <img src="https://t4.ftcdn.net/jpg/02/23/53/99/360_F_223539951_AUTIbUh1Ws1jD3Y1gCoAPnjQlOhcoVPp.jpg" alt="Image 2">
                
            </a>
            <button onclick="location.href='TransactionView.jsp';">Fund Transfer</button>
            
        </div>
        <div class="card">
            <a href="BankStatement.jsp">
                <img src="https://previews.123rf.com/images/outchill/outchill1711/outchill171109543/89122448-bank-statement-text-on-round-vintage-rubber-stamp-sign-with-stars-blue-color.jpg" alt="Image 3">
            </a>
            <button onclick="location.href='BankStatement.jsp';">Bank Statement</button>
        </div>
        <div class="card">
            <a href="Myprofile.jsp">
                <img src="data:image/jpeg;base64,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" alt="Image 4">
            </a>
            <button onclick="location.href='Myprofile.jsp';">my profile</button>
            
        </div>
    </div>
</body>
</html>