<?php session_start();
include "header.php";
?>

<div style="height: 150px;"></div>
<div style="width: 80%; margin: 0 auto;">
		<div style="width: 50%; margin: 0 auto;">
		
<?php include  "connect.php"; ?>

	<form action="order.php" method="post">

		<table align="center" border="1" cellspacing="14" cellpadding="12" style="width: 100%">
          <tr>
			<th> <h3 align="center" style="font-size: 1.3em;">Fill Up Details To Deliver Your Item</h3> </th>
		<br>
            </tr>
			    <tr align="center">

			    	<td style="color: #964d29">  Enter your name  <br>
			        <input type="text" name="nm" placeholder="Enter your name" style="width: 100%; padding: 10px; color: black;" required="" pattern="[a-z,A-Z]*"></td>
			    		
			    </tr>

			    <tr align="center">
			    	<td style="color: #964d29">   Enter Mobile number <br>
			        <input type="no" name="mo" placeholder="Enter mobile number" style="width: 100%; padding: 10px; color: black;" required="" pattern="\d{11}"></td>
			    </tr>

			    <tr align="center">
			    	<td style="color: #964d29">   Enter Email address <br>
			        <input type="Email" name="em" placeholder="Enter email address" style="width: 100%; padding: 10px; color: black;"></td>
			    </tr>

                <tr align="center">
                	<td style="color: #964d29"> Enter Address <br>
                 <input type="text" name="ad" placeholder="Enter your address" style="width: 100%; padding: 10px; color: black;"></td> 
                </tr>	

                <tr align="center">
                	<td colspan="4" > <input type="submit" name="s" value="Confirm Order" style="height: 50px; background-color:#964d29; color: white; padding: 10px; width: 30%;"> </td>
                	
                </tr>

         </table>	
	</form>
		           <br> <br>



	</div>
</div>


<?php include "footer.php"; ?>