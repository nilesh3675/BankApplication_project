<%@page import="project.model.Customer"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="UTF-8">
<title>User Profile</title>
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

  /* Profile card styling */
  .profile-card {
    max-width: 600px;
    margin: 50px auto;
    padding: 20px;
    background-color: white;
    border-radius: 10px;
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  }

  /* Profile title styling */
  .profile-title {
    text-align: center;
    font-size: 24px;
    font-weight: bold;
    margin-bottom: 20px;
  }

  /* Profile data styling */
  .profile-data {
    margin-bottom: 20px;
  }

  .profile-field {
    display: flex;
    justify-content: space-between;
    padding: 10px 0;
    border-bottom: 1px solid #ddd;
  }

  .profile-label {
    font-weight: bold;
    text-transform: uppercase;
  }

  /* Profile action styling */
  .profile-actions {
    text-align: center;
  }

  .btn {
    margin: 10px;
  }
</style>
</head>
<body>
    <div style="background-color: grey;">
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <div class="container-fluid">
                <img src=https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbpNOa28LDU8ww4UAGZehe5aAtUlbfjmJZTzyaxFKp-w&s style="width: 4%;height: 2%; padding-left: 10px;" alt="img">
              <div class="collapse navbar-collapse" id="navbarNavAltMarkup" style="margin-left: 990px;">
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
<div class="profile-card">
  <h2 class="profile-title">User Profile</h2>
  <div class="profile-data">
   <%! List<Customer>custList=null;
			Customer c=null;
		%>
		<%
			custList=(List<Customer>)session.getAttribute("user");
			c=custList.get(0);
			
			
		%>
    <div class="profile-field">
      <span class="profile-label">Customer Name:</span>
      <span><%= c.getCustName() %></span>
    </div>
    <div class="profile-field">
      <span class="profile-label">Account Number:</span>
      <span><%= c.getAccNo() %></span>
    </div>
    <div class="profile-field">
      <span class="profile-label">Account Balance</span>
      <span><%=c.getAccBal() %></span>
    </div>
    
    
   
  </div>
  <div class="profile-actions">
    <a href="ChangePasswordView.jsp" class="btn btn-primary">Change Password</a>
    <form action="LogOutController" method="post" style="display:inline;">
      <button type="submit" class="btn btn-danger">Logout</button>
    </form>
    
    <%
	 String str=(String)session.getAttribute("changePass");
	%>
	<p style='color: red'>
    <%
      if (str != null && !session.isNew()) {
        out.println(str);
      } 
    %>
    
  </div>
</div>
<!-- Include optional Bootstrap scripts -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>