
<div class="container">
	<div class="row">
		<div class="col-lg-4">
			<h3 class="text-center">${title}</h3>
			<div class="row">
				<div class="col-lg-* well">
					<strong>Amount Payable:</strong> ${gdTot}
				</div>
			</div>
		</div>
		<div class="col-lg-6">
			<div>Select Payment Method</div>
			<form method="POST">
				<table class="table table-hover table-condensed">
					<tr>
						<td colspan=1>&nbsp;</td>
					</tr>

					<tr>
						<td style="width: 75px;"><a href="${contextRoot}/payment/card"><img
								src="${images}/card.png" alt="" /></a></td>
						<td><a href="${contextRoot}/payment/card">Card</a></td>
					</tr>
					<tr>
						<td style="width: 75px;"><a href="${contextRoot}/payment/netbank"><img
							src="${images}/netbanking.png" alt="" /></a></td>
						<td><a href="${contextRoot}/payment/netbank">NetBanking</a></td>
					</tr>
					<tr>
						<td style="width: 75px;"><a href="${contextRoot}/payment/wallet"><img
							src="${images}/wallet.jpg" alt="" /></a></td>
						<td><a href="${contextRoot}/payment/wallet">Wallet</a></td>
					</tr>
					<tr>
						<td style="width: 75px;"><a href="${contextRoot}/payment/upi"><img
							src="${images}/upi.png" alt="" /></a></td>
						<td><a href="${contextRoot}/payment/upi">UPI</a></td>
					</tr>
					<tr>
						<td style="width: 75px;"><a href="${contextRoot}/payment/cod"><img
								src="${images}/cod.png" alt="" /></a></td>
						<td><a href="${contextRoot}/payment/cod">Cash on Delivery</a></td>
					</tr>
				</table>
			</form>
			
		</div>
	</div>
	<div class="row">
		<div class="col-lg-6 offset-lg-4">
				<div><a href="${contextRoot}/cart/show" class="btn btn-warning"><span
								class="glyphicon glyphicon-chevron-left"></span> Back</a>
				<span>${cartLines}</span></div>
		</div>
	</div>
</div>