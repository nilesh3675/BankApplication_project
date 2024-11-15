<%@page import="java.util.List"%>
<%@page import="project.model.Recharge"%>
<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="UTF-8">
<title>Recharge Details</title>
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

  /* Table styling */
  .table {
    width: 100%;
    border-collapse: collapse;
  }

  .table th, .table td {
    padding: 10px;
    border: 1px solid #ddd;
    text-align: left;
  }

  .table th {
    background-color: #f2f2f2;
    text-transform: uppercase;
  }

  /* Card layout */
  .card {
    max-width: 600px;
    margin: 50px auto;
    padding: 20px;
    background-color: white;
    border-radius: 10px;
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  }

  /* Button styling */
  .btn {
    display: inline-block;
    padding: 10px 20px;
    text-align: center;
    color: white;
    background-color: #0093E9;
    border: none;
    border-radius: 5px;
    text-transform: uppercase;
    cursor: pointer;
    transition: all 0.3s ease;
  }

  .btn:hover {
    background-color: #80D0C7;
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
  <h2 style="text-align:center;">Recharge Details</h2>
  <form action="ConfirmDetailsController">
    <button type="submit" class="btn">Confirm</button>
  </form>

  <table class="table">
    <thead>
      <tr>
        <th>Mobile Number</th>
        <th>Service</th>
        <th>Amount</th>
      </tr>
    </thead>
    <tbody>
      <%
        List<Recharge> rechargeList = (List<Recharge>) session.getAttribute("recharge");
        if (rechargeList != null && !rechargeList.isEmpty()) {
          Recharge r = rechargeList.get(0);
      %>
      <tr>
        <td><%= r.getMobNo() %></td>
        <td><%= r.getService() %></td>
        <td><%= r.getAmmount() %></td>
      </tr>
      <% 
        }
      %>
    </tbody>
  </table>
</div>
<!-- Include optional Bootstrap scripts -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>