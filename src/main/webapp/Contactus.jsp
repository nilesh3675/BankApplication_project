<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Contact Us - Bank Management System</title>
    <style>
	/* style.css */
body {
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
    background: linear-gradient(to bottom, #1a237e, #3949ab);/* Light blue gradient */
}

.container {
    max-width: 600px;
    margin: 50px auto;
    padding: 20px;
    background: white;
    border: 1px solid #ddd;
    box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
    border-radius: 10px;
}

h2 {
    text-align: center;
    color: #333;
}

.form-group {
    margin-bottom: 15px;
}

label {
    display: block;
    margin-bottom: 5px;
    color: #555;
}

input, textarea {
    width: 90%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

input:focus, textarea:focus {
    border-color: #66afe9; /* Light blue focus color */
    outline: none;
}

input[type="submit"] {
    background: #3399ff; /* Bright blue */
    color: white;
    border: none;
    padding: 10px 20px;
    border-radius: 5px;
    cursor: pointer;
}

input[type="submit"]:hover {
    background: #2874c5; /* Darker blue on hover */
}

input[type="submit"]:focus {
    outline: none;
}

	</style>
</head>
<body>
    <div class="container">
        <h2>Contact Us</h2>
        <form action="/submit_contact_form" method="POST">
            <!-- User Details -->
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required>
            </div>
            
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
            </div>
            
            <div class="form-group">
                <label for="phone">Phone:</label>
                <input type="tel" id="phone" name="phone">
            </div>

            <!-- Inquiry Details -->
            <div class="form-group">
                <label for="subject">Subject:</label>
                <input type="text" id="subject" name="subject" required>
            </div>
            
            <div class="form-group">
                <label for="message">Message:</label>
                <textarea id="message" name="message" rows="4" required></textarea>
            </div>

            <!-- Anti-Spam (CAPTCHA or Simple Challenge) -->
            <div class="form-group">
                <label for="captcha">Please solve: 3 + 4 = ?</label>
                <input type="number" id="captcha" name="captcha" required>
            </div>

            <!-- Submit Button -->
            <div class="form-group">
                <input type="submit" value="Submit">
            </div>
        </form>
    </div>
</body>
</html>