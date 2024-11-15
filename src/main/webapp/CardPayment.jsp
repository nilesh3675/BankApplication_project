<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>cardPay</title>
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
    .btn-grad {
            background-image: linear-gradient(to right, #457fca 0%, #5691c8  51%, #457fca  100%);
            margin: 60px;
            padding: 15px 45px;
            text-align: center;
            text-transform: uppercase;
            transition: 0.5s;
            background-size: 200% auto;
            color: white;            
            box-shadow: 0 0 20px #eee;
            border-radius: 10px;
            display: block;
          }

          .btn-grad:hover {
            background-position: right center; /* change the direction of the change here */
            color: #fff;
            text-decoration: none;
          }
  </style>
  <script type="text/javascript">
  function clear(){
		window.onload=clearFields;
	}
  </script>
</head>
      <body>
        <div style="background-color: grey;">
          <nav class="navbar navbar-expand-lg bg-body-tertiary">
              <div class="container-fluid">
                  <img src=https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbpNOa28LDU8ww4UAGZehe5aAtUlbfjmJZTzyaxFKp-w&s style="width: 4%;height: 2%; padding-left: 10px;" alt="img">
                <div class="collapse navbar-collapse" id="navbarNavAltMarkup" style="margin-left: 900px;">
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
         <div class="parent">
          <form action="CardPaymentController">
              <div class="form-group">
                      <label class="control-label col-sm-7" for="number"><i class="fa-solid fa-file-invoice"></i> Account no:</label>
                  <div class="col-sm-9">
                      <input type="text" class="form-control" name="accNo" required placeholder="Account no"><br>
                  </div>
              </div>
              <div class="formgroup">
                      <label class="control-label col-sm-7" for="amount"><i class="fa-solid fa-sack-dollar"></i> CW:</label>
                  <div class="col-sm-9">
                      <input type="text" class="form-control" name="cvv" required placeholder="CW"><br>
                  </div>
              </div>
              <div class="form-group">
                  <label class="control-label col-sm-7"><i class="fa-solid fa-sack-dollar"></i> Amount:</label>
                  <div class="col-sm-9">
                      <input type="text" class="form-control" name="ammount" required placeholder="Amount"><br>
                  </div>
              </div> 
              <button class="btn-grad" type="submit">TRANSFER</button>
          </form>
                  <%
	 String str=(String)session.getAttribute("CardError");
	%>
	<p style='color: red'>
    <%
      if (str != null && !session.isNew()) {
        out.println(str);
      } 
    %>
      
      </div>
</body>
</html>