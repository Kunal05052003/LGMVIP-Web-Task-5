<?php
include("config.php");
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Online Result</title>
<link href="style.css" rel="stylesheet" >
</head>

<body><br />
<span class="head"><strong><center>Student Result Management </center></strong></span>
<div align="right">

<hr class="hr" />
<br />
<br />
<span class="subhead"><marquee behavior="scroll" direction="left" scrollamount="20"><strong>Check your Result 👇 </strong></marquee></span>
<br />
<br />
<br />
<form method="post" action="viewResult.php">
<table border="0" cellpadding="5" cellspacing="5" class="design">
<tr><td colspan="2" align="center" class="msg"><?php echo $msg;?></td></tr>
<tr><td class="labels">ROLL NO.</td><td><input type="text" required="required" name="roll" class="fields" size="15" placeholder="Enter your Roll No." /></td></tr>
<tr><td colspan="2" align="center"><input type="submit" value="SHOW" class="fields1" /></td></tr>
</table>
</form>
<br />
<br />
<a href="register.php" class="link">Student Registration</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="faculty.php" class="link">Faculty Login</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="registerFaculty.php" class="link">Faculty Registration</a>
</div>
<footer class="text-center mt-5 py-2" >
        <p>&copy 2023 Made by <b>Kunal Jadhav</b></p>
      </footer>
</body>
</html>