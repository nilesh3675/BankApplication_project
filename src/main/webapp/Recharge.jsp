<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Recharge page</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<style>
    *{
        padding: 0;
        margin: 0;
    }
	body{
        background-color: #0093e9;
    }
    .parent{
        padding: 30px 5px 20px 60px; */
        font-family: Arial, Helvetica, sans-serif;
        font-size: 1.3rem;
        font-weight: 600;
        border: 2px solid black;
        border-radius: 5%;
        background-color: #eaf6f6;
        margin: 50px 550px 0px 550px;
    }
    .btn{
        margin-left: 80px;
        border: 1px solid ;
        background:red;
        color: white;
        font-family: Arial, Helvetica, sans-serif;
        font-size: 1.3rem;
        font-weight: 600;
    }
</style>
</head>
<body>
	<!-- <center><h1 style="padding-top: 30px; font-family: Arial, Helvetica, sans-serif;"><i class="fa-solid fa-mobile"> Recharge </i></h1></center> -->
   <div style="background-color: grey;">
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container-fluid">
            <img src=https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbpNOa28LDU8ww4UAGZehe5aAtUlbfjmJZTzyaxFKp-w&s style="width: 4%;height: 2%; padding-left: 10px;" alt="img">
          <div class="collapse navbar-collapse" id="navbarNavAltMarkup" style="margin-left: 990px;">
            <div class="navbar-nav" style="padding-left:20px;">
              <a class="nav-link" href="HomeView.jsp" style="color: black; font-weight: 600; font-size: 1.3rem;"><i class="fa-solid fa-house"></i> Home</a>
              <a class="nav-link" href="About.jsp" style="color:black;font-weight: 600;font-size: 1.3rem;"><i class="fa-solid fa-magnifying-glass"></i> About Us</a>
              <a class="nav-link" href="Contactus.jsp" style="color: black;font-weight: 600;font-size: 1.3rem;"><i class="fa-solid fa-headphones"></i> Contact</a>
              <a class="nav-link" href="Dashboard.jsp" style="color: black;font-weight: 600;font-size: 1.3rem;"><i class="fa-solid fa-handshake-angle"></i> Help</a>
            </div>
          </div>
        </div>
      </nav>
   </div>
    <div class="parent">
        <form action="RechargeController">
            <div class="form-group">
                    <label class="control-label col-sm-7" for="number"><i class="fa-solid fa-mobile-retro"></i> Mobile No:</label>
                <div class="col-sm-9">
                    <input type="number" class="form-control" name="mobNo" required placeholder="Mob no"><br>
                </div>
            </div>
            <div class="formgroup">
                    <label class="control-label col-sm-7" for="amount"><i class="fa-solid fa-sack-dollar"></i> Amount:</label>
                <div class="col-sm-9">
                    <input type="number" class="form-control" name="Ammount" required placeholder="Amount"><br>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-7"><i class="fa-solid fa-sim-card"></i> Sim:</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" name="Service" required placeholder="Telecom Company"><br>
                </div>
            </div> 
            <button class="btn" type="submit">Recharge</button>
        </form>
          <%
	 String str=(String)session.getAttribute("rechargeError");
	%>
	<p style='color: green'>
    <%
      if (str != null && !session.isNew()) {
        out.println(str);
      } 
    %>
  </p>
        
    </div>
</body>
</html>