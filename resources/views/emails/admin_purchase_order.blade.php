<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
</head>
<body>
	<table style="width: 100%;">
		<tr><td>&nbsp;</td></tr>
		<!-- <tr><td><img src="images/frontend_images/zillionlogo.png" style="height: 100px"></td></tr>	
		<tr><td>&nbsp;</td></tr> -->
		<tr><td>Hello {{ $name }},</td></tr>
		<tr><td>Thank you for shopping with us. Your order details are as below :-</td></tr>
		<tr><td>Order ID: #{{$order_id}}</td></tr>
		<tr><td>
			<table style="width: 50%;" cellpadding="5" cellspacing="5" bgcolor="#f7f4f4">
				<tr bgcolor="#cccccc">
					<td>Course Name</td>
					<td>Course Price</td>
				</tr>
					<tr>						
						<td>₹ {{$course['price']}}</td>
					</tr>
				<tr>
					<td align="right">Grand Total</td><td>₹ {{$course['price']}}</td>
				</tr>
			<tr>
				<td align="right">Grand Total</td><td>₹{{$course['price']+($course['price']*0.18)}}</td>
			</tr>
			</table>
		</td></tr>
		<tr><td>
			<table width="50%">
				<tr>
					<td width="50%">
						<table>
							<tr><td><strong>Billing Address :-</strong></td></tr>
							<tr><td>{{$userDetails['address']}}</td></tr>
							<tr><td>{{$userDetails['city']}}</td></tr>
						</table>
					</td>
				</tr>
			</table>
		</td></tr>
		<tr><td>&nbsp;</td></tr>
		<tr><td>Regards,<br> <b>Zillion Link</b></td></tr>
		<tr><td>&nbsp;</td></tr>
	</table>	
</body>
</html>