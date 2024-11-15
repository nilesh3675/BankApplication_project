<%@page import="java.util.ArrayList"%>
<%@page import="project.model.Transaction"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bank Statement</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<style>
    body {
        background-color: #0093e9;
        color: #333;
        font-family: Arial, sans-serif;
    }
    .navbar {
        background-color: grey;
    }
    .navbar-nav .nav-link {
        color: black;
        font-weight: 600;
        font-size: 1.3rem;
    }
    .card-container {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        margin-top: 50px;
    }
    .card {
        width: 200px;
        margin: 20px;
        border-radius: 5px;
        border: 2px solid grey;
    }
    .card:hover {
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
    }
    .card img {
        width: 100%;
        border-radius: 5px 5px 0 0;
    }
    .card form input[type="submit"] {
        width: 100%;
        padding: 10px;
        border: none;
        margin: 2px;
        border-radius: 4px;
        cursor: pointer;
        background-color: #333A73;
        color: white;
        font-size: 16px;
    }
    .card form input[type="submit"]:hover {
        background-color: #45a049;
    }
    .content {
        background-color: white;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        margin: 20px auto;
        max-width: 800px;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin: 20px 0;
    }
    table, th, td {
        border: 1px solid black;
    }
    th, td {
        padding: 10px;
        text-align: center;
    }
</style>
<script type="text/javascript">
    function clear() {
        window.onload = clearFields;
    }
</script>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg">
        <div class="container-fluid">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbpNOa28LDU8ww4UAGZehe5aAtUlbfjmJZTzyaxFKp-w&s" style="width: 4%; height: 2%; padding-left: 10px;" alt="img">
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup" style="margin-left: auto;">
                <div class="navbar-nav">
                    <a class="nav-link" href="HomeView.jsp"><i class="fa-solid fa-house"></i> Home</a>
                    <a class="nav-link" href="About.jsp"><i class="fa-solid fa-magnifying-glass"></i> About Us</a>
                    <a class="nav-link" href="Contactus.jsp"><i class="fa-solid fa-headphones"></i> Contact</a>
                    <a class="nav-link" href="Dashboard.jsp"><i class="fa-solid fa-handshake-angle"></i> Dashboard</a>
                </div>
            </div>
        </div>
    </nav>

    <!-- Card container -->
    <div class="card-container">
        <div class="card">
            <img src="https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQwSm4jyk1gWzOlIV-2rNyVOa07r8pOU2PClBLPkKSedzgC37tU" alt="Image">
            <form action="BankStatementController">
                <input type="submit" value="Download">
            </form>
        </div>
        <div class="card">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0Bo5xRTb0f0THe7mP1cAWF8BKFQwBLjSFF9ebffQ9SxeOTjJu" alt="Image">
            <form action="StatementDisplay">
                <input type="submit" value="View">
            </form>
        </div>
    </div>

    <div class="content">
        <h2 style="text-align:center;">Bank Statement</h2>
        <%
        List<Transaction> transList = new ArrayList<>();
        if (!session.isNew()) {
            transList = (List<Transaction>) session.getAttribute("bankstatement");
        %>
        <table>
            <thead>
                <tr>
                    <th>Sender</th>
                    <th>Receiver</th>
                    <th>Transaction Type</th>
                    <th>Amount</th>
                </tr>
            </thead>
            <tbody>
                <%
                if (transList != null) {
                    for (Transaction t : transList) {
                %>
                <tr>
                    <td><%= t.getSenderAccNo() %></td>
                    <td><%= t.getRecieverAccNo() %></td>
                    <td><%= t.getTransType() %></td>
                    <td><%= t.getAmmount() %></td>
                </tr>
                <%
                    }
                }
                %>
            </tbody>
        </table>
        <%
        }
        %>
    </div>
</body>
</html>