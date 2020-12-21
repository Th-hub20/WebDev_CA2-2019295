<!DOCTYPE html >
<html>
<head>
<title>Tiagohubner Login Form</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body id="body_bg">
<div <div align="center">

<h3>Tiagohubner Login Form</h3>
    <form id="login-form" method="post" action="authen_login.php" >
        <table border="0.5" >
            <tr>
                <td><label for="user_id">User Name</label></td>
                <td><input type="text" name="user_id" id="user_id"></td>
            </tr>
            <tr>
                <td><label for="user_pass">Password</label></td>
                <td><input type="password" name="user_pass" id="user_pass"></input></td>
            </tr>
			
            <tr>
				
                <td><input type="submit" value="Submit" />
                <td><input type="reset" value="Reset"/>
				
            </tr>
        </table>
    </form>
		</div>
</body>
</html>
<style>
    #body_bg
{ 
background-color:#9F81F7; 
}

#login-form{ 

background:#A9D0F5; 
border: 3 px solid #eeeee; 
padding:9px 9px;
 width:300px; 
 border-radius:5px; 
}
    </style>