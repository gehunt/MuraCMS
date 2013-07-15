<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Login</title>

<style type="text/css">

body {
	background: #f1f1f1;
	font-family: "Helvetica", "Arial", sans-serif;
	color: #343434;
	margin: 0; padding: 0;
}

form {
	width: 300px;
	margin: 100px auto;
	background: #FCFCFC;
	padding: 25px;
	border: 1px solid #ccc;
	-moz-border-radius: 3px; -webkit-border-radius: 3px; border-radius: 3px;
}

form label {
	display: block;
	width: 100%;
	font-size: 14px;
}

form input.text {
	font-size: 12px;
	width: 288px;
	margin: 5px 0 25px;
	padding: 6px;
	border: 1px solid #ccc;
	-moz-border-radius: 3px; -webkit-border-radius: 3px; border-radius: 3px;
	transition: border 100ms linear;
	-moz-transition: border 100ms linear; /* Firefox 4 */
	-webkit-transition: border 100ms linear; /* Safari and Chrome */
	-o-transition: border 100ms linear; /* Opera */
	
}

form input.text:focus {
	outline: 0;
	border: 1px solid #959595;
}

form input.submit {
	background: #005AA7;
	color: #fff;
	text-shadow: 0 -1px 0 #003767;
	text-transform: uppercase;
	font-size: 10px;
	font-weight: bold;
	padding: 7px 14px;
	border: 0;
	cursor: pointer;
	-moz-border-radius: 3px; -webkit-border-radius: 3px; border-radius: 3px;
	transition: background 100ms linear;
	-moz-transition: background 100ms linear; /* Firefox 4 */
	-webkit-transition: background 100ms linear; /* Safari and Chrome */
	-o-transition: background 100ms linear; /* Opera */
	
}

form input.submit:hover {
	background: #006BC7;
}

form p#submitWrap {
	text-align: right;
	margin: 0; padding: 0;
}

form p#error {
	color: #A70001;
	padding: 5px 10px;
	font-size: 12px;
	margin: 0;
	float: left;	
}

</style>

</head>
<body>
<form method="post" action="">
	<label for="locku">Username:</label>
	<input type="text" name="locku" id="locku" class="text" />
	
	<label for="lockp">Password:</label>
	<input type="password" name="lockp" id="lockp" class="text" />
	
	<input type="hidden" name="locks" value="true" />
	<cfif len(event.getValue('locks'))>
		<p id="error">Login failed!</p>
	</cfif>
	<p id="submitWrap"><input type="submit" name="submit" value="Login" class="submit" /></p>

</form>
</body>
</html>
<cfabort>