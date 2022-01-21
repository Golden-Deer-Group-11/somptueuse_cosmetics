<?php include "header.php"; ?> 
<body>
	
	<!-- Start All Pages -->
	<div class="all-page-title page-breadcrumb">
		<div class="container text-center">
			<div class="row">
				<div class="col-lg-12">
					<h1> SIGN UP </h1>
				</div>
			</div>
		</div>
	</div>
	<!-- End All Pages -->
	
	<!-- Start Contact -->
	
	<div class="contact-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					
				</div>
			</div>

			<div class="row">
				<div class="col-lg-12">

<form action="" method="POST"> 

	<table cellpadding="5" cellspacing="7" border="0" align="center" width="30%">

		<tr>
			<td> User ID</td>
		</tr>
	  	<tr>
	  		<td align="center">
	  			<input type="text" name="uid" value="" placeholder="Enter User ID"required=""style="padding: 10px;width: 100%;">  
	  		</td>
	  	</tr>
	   
	   	<tr>
			<td>Password</td>
		</tr>
	  	<tr>
	 		<td align="center">
	 			<input type="password" name="pass" value="" placeholder="Create Password" required="" style="padding: 10px; width: 100%">
	 		</td>
	 	</tr>

		<tr>
			<td> Email</td>
		</tr>
	  	<tr>  

	 		<td align="center">
	 			<input type="email" name="email" value="" placeholder="Enter Email Address" required="" style="padding: 10px; width: 100%">
	 		</td>
	  	</tr>

	    <tr>   
			<td align="center"> 
				<input type="submit" name="sb" value="Sign Up" style="color:white;padding: 2px; background: #964D29; font-size: 1.2em; border-radius: 4px; border-color: black; font-family:Forum; width: 50%">
			</td>
	   </tr>
	   <tr align="center">	
		    <td>
		   		<b>By clicking Sign Up you agree on terms of use and policy of Sompteuse Cosmetics</b> <br> <br>

		      <a href="login.php"> Already have an account?</a>
		  	</td>
		</tr>
	 
</form>
	</table>

					<?php
					if(isset($_POST['sb']))
					{
						
						$uid = $_POST['uid'];
						$pass = $_POST['pass'];
						$email = $_POST['email'];
						include "connect.php";
						mysqli_query($con,"insert into registration(userid, password,email) values('$uid','$pass','$email')");
						echo "<script>alert('You have successfully registered and logged in.');</script>";
						echo "<center>Registration SuccessFully ... Click to <a href='login.php'>login</a></center>";
					}	

					?>

				</div>
			</div>
		
		</div>
	</div>
	<!-- End Contact -->
<?php include "footer.php"; ?>