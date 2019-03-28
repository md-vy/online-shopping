
<div class="container">
	<div class="row">

		<h3 class="text-center">${title}</h3>
		<div>
			<form>
				<table class="table table-hover table-condensed">
					<tr>
						<td colspan=3><a href="${contextRoot}/payment" class="btn btn-warning"><span
								class="glyphicon glyphicon-chevron-left"></span> Back</a></td>
					</tr>
					<tr>
						<td colspan=3><label>Card No.</label><br /> <input
							type="text" class="form-control" id="credit-card"
							name="credit-card"
							data-inputmask="'mask': '9999 - 9999 - 9999 - 9999'" /></td>
					</tr>
					<tr>
						<td colspan=3><label>Expiry</label><br /> <input type="text"
							class="form-control" id="card-expiry" name="card-expiry"
							data-inputmask="'mask': '99 / 99'" /></td>
					</tr>
					<tr>
						<td colspan=3><label>Card Holder's Name</label><br /> <input
							type="text" class="form-control" id="card-name" name="card-name" /></td>
					</tr>
					<tr>
						<td colspan=3><label>CVV</label><br /> <input type="password"
							class="form-control" id="cvv" name="cvv" /></td>
					</tr>
					<tr>
						<td colspan=3>&nbsp;</td>
					</tr>
					<tr>
						<td colspan=3>&nbsp;</td>
					</tr>
					<tr>
						<td colspan=3>&nbsp;</td>
					</tr>
					<tr>
						<td align="center"><input type="submit"
							value="Payment &#8377;${cartLine.getGrandTotal()}" /></td>
					</tr>

				</table>
			</form>
		</div>
	</div>
</div>