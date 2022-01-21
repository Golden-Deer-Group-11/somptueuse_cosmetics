<?php include "header.php"; ?> 
<body>
	
	<!-- Start All Pages -->
	<div class="all-page-title page-breadcrumb">
		<div class="container text-center">
			<div class="row">
				<div class="col-lg-12">
					<h1> LOGIN </h1>
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

<form action="loginck.php" method="post">

  <table border="0" align="center" cellpadding="5" cellspacing="7" width="30%">
	
		
	    <tr align="center">	
		    <td> <img src="Login.png" style="width: 30%"> <br>
		      
		  	</td>
		</tr>

		<tr>
			<td>User ID</td>
		</tr>
		<tr align="center">
        	<td>
        	 <input type="text" name="uid" placeholder="Enter Your User ID" style="padding: 10px; width: 100%"> <br>  </td>
		</tr>

		<tr>
			<td> Password</td>
		</tr>
		<tr align="center">
 			<td> <input type="Password" name="pass" placeholder="Enter Password" style="padding: 10px; width:100%"> <br>   
 			</td>
		</tr>

		<tr>	    
			<td align="center"> <input type="submit" name="" value="Login" style="color:white; background: #964D29; font-size: 1.2em; margin: 6px; border-radius: 4px; width: 50%;  border-color: black; font-family:Forum"> </td> 
		</tr>
        <tr>
        	<td align="center">
        		<a href="registration.php"> Create an Account</a>
        	</td>
        </tr>
</form>
		</table>			


				</div>
			</div>
		
		</div>
	</div>
	<!-- End Contact -->
<?php include "footer.php"; ?>