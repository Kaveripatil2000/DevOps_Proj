<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Registration</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f8f8f8;
	margin: 0;
	padding: 0;
}

.container {
	max-width: 600px;
	margin: 50px auto;
	background-color: #fff;
	border-radius: 8px;
	padding: 20px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.container h1 {
	text-align: center;
	color: #333;
}

.form-group {
	margin-bottom: 20px;
}

.form-group label {
	display: block;
	font-weight: bold;
}

.form-group input[type="text"], .form-group input[type="email"],
	.form-group input[type="password"], .form-group select {
	width: 100%;
	padding: 10px;
	border-radius: 5px;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

.form-group select {
	appearance: none;
	-webkit-appearance: none;
	-moz-appearance: none;
	background-image:
		url('data:image/svg+xml;utf8,<svg fill="#ccc" width="8" height="5" viewBox="0 0 8 5" xmlns="http://www.w3.org/2000/svg"><path d="M4 5L0 0h8L4 5z"/></svg>');
	background-repeat: no-repeat;
	background-position: right 10px top 50%;
	background-size: 8px 5px;
	padding-right: 30px;
}

.form-group button {
	width: 100%;
	padding: 10px;
	border-radius: 5px;
	border: none;
	background-color: #007bff;
	color: #fff;
	font-size: 16px;
	cursor: pointer;
}

.form-group button:hover {
	background-color: #0056b3;
}
</style>
</head>
<body>

	<div class="container">
		<h1>User Registration Form</h1>
		<form action="insert" name="registrationForm"
			onsubmit="return validateForm()" enctype="multipart/form-data">
			<div class="form-group">
				<label for="name">Name:</label> <input type="text" id="name"
					name="name" required>
			</div>
			<div class="form-group">
				<label for="email">Email:</label> <input type="email" id="email"
					name="email" required>
			</div>


			<div class="form-group">
				<label for="mobile">Mobile Number:</label> <input type="text"
					id="mobile" name="mobile" pattern="[0-9]{10}" required>
			</div>
			

			<div class="form-group">
				<label for="dob">Date of Birth:</label> <input type="date" id="dob"
					name="dob" required>
			</div>


			<div class="form-group">
				<label for="location">Location:</label> <select id="location"
					name="location" required>
					<option value="">Select Location</option>
					<option value="Bangalore">Bangalore</option>
					<option value="Hyderabad">Hyderabad</option>
					<option value="Chennai">Chennai</option>
					<option value="New Delhi">New Delhi</option>
				</select>
			</div>
			<div class="form-group">
				<label for="identificationDocument">Identification Document:</label>
				<input type="file" id="identificationDocument" name="file" accept="image/*,application/pdf,.doc,.docx" required>
				
			</div>
			<div class="form-group">
				<button type="submit">Submit</button>
			</div>
		</form>
		<div id="message" style="color: red;"></div>
	</div>

	<script>
		function validateForm() {
			var name = document.getElementById("name").value;
			var email = document.getElementById("email").value;
			var mobileNumber = document.getElementById("mobileNumber").value;
			var dob = document.getElementById("dob").value;
			var location = document.getElementById("location").value;
			var identificationDocument = document
					.getElementById("identificationDocument").value;

			if (name === "") {
				displayMessage("Name is required.");
				return false;
			}

			if (email === "") {
				displayMessage("Email is required.");
				return false;
			}

			if (mobileNumber === "") {
				displayMessage("Mobile number is required.");
				return false;
			}

			if (dob === "") {
				displayMessage("Date of Birth is required.");
				return false;
			}

			if (location === "") {
				displayMessage("Location is required.");
				return false;
			}

			if (identificationDocument === "") {
				displayMessage("Identification Document is required.");
				return false;
			}

			return true;
		}

		function displayMessage(message) {
			document.getElementById("message").innerHTML = message;
		}
	</script>

</body>
</html>
