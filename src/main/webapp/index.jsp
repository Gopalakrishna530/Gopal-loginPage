<html>
<head>
<title>Javascript Login Form Validation</title>
<!-- Include CSS File Here -->
<link rel="stylesheet" href="css/style.css"/>
<!-- Include JS File Here -->
<script src="js/login.js"></script>
</head>
<body>
<div class="container">
<div class="main">
<form id="form_id" method="post" name="myform">
<label>USER:</label>
<input type="text" name="username" id="username"/>
<label>PASS:</label>
<input type="password" name="password" id="password"/>
<input type="button" value="LOGIN" id="submit" onclick="validate()"/>
</form>

<br>
<br>
username is <b>asd</b> and password is <b>123</b>

</div>
</div>
</body>
</html>

<!--THE JS JAVASCRIPT PART BELOW-->

<head>
<script>

var attempt = 4; // Variable to count number of attempts.
// Below function Executes on click of login button.
function validate() {
    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;
    if (username == "asd" && password == "123") {
        alert("Login successfully");
        window.location = "success.html"; // Redirecting to other page.
        return false;
    } else {
        attempt--; // Decrementing by one.
        alert("You have left " + attempt + " attempt;");
        // Disabling fields after 3 attempts.
        if (attempt == 0) {
            document.getElementById("username").disabled = true;
            document.getElementById("password").disabled = true;
            document.getElementById("submit").disabled = true;
            return false;
        }
    }
}
</script>
</head> 