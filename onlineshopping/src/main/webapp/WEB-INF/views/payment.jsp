
<div class="container">
	<div class="row">

		<h3 class="text-center">${title}</h3>
		<div>
			<form method="POST">
				<table class="table table-hover table-condensed">
					<tr>
						<td colspan=2><a href="${contextRoot}/cart/show" class="btn btn-warning"><span
								class="glyphicon glyphicon-chevron-left"></span> Back</a></td>
						<td>${cartLines}</td>
					</tr>
					<tr>
						<td colspan=3><label>Phone</label><br /> <input type="text"
							id="phone" placeholder="Phone No."
							class="form-control text-center" width="250" /></td>
					</tr>
					<tr>
						<td colspan=3><label>Email</label><br /> <input type="text"
							id="email" placeholder="Email Id."
							class="form-control text-center" width="250" /></td>
					</tr>
					<tr>
						<td colspan=3>&nbsp;</td>
					</tr>
					<tr>
						<td colspan=3><label>Select Payment Method</label></td>
					</tr>
					<tr>
						<td colspan=3>&nbsp;</td>
					</tr>
					<tr>
						<td align="center"><a href="${contextRoot}/payment/card"><img
								src="${images}/card.png" alt="" /></a> <br />Card</td>
						<td align="center"><a href="${contextRoot}/payment/netbank"><img
							src="${images}/netbanking.png" alt="" /></a> <br />NetBanking
						</td>
						<td align="center"><a href="${contextRoot}/payment/wallet"><img
							src="${images}/wallet.jpg" alt="" /></a> <br />Wallet</td>
						<td align="center"><a href="${contextRoot}/payment/upi"><img
							src="${images}/upi.png" alt="" /></a> <br />UPI</td>
					</tr>

				</table>
			</form>
		</div>
	</div>
</div>