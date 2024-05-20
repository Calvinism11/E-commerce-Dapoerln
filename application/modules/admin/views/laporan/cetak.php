<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Laporan Order</title>
</head>
<body onload="window.print();">

	<h1 align="center">Laporan Order</h1>
	<hr>

	<table border="1" width="100%" style="border-collapse: collapse;">
		<tr>
			<th>No</th>
			<th>Order Number</th>
			<th>Tanggal</th>
			<th>Total Items</th>
			<th>Total Harga</th>
		</tr>
		<?php foreach($order as $key => $item) { ?>
		<tr>
			<td><?= $key+=1 ?></td>	
			<td><?= $item->order_number ?></td>
			<td><?= date('d-m-Y',strtotime($item->order_date)) ?></td>
			<td><?= $item->total_items ?></td>
			<td>Rp <?= number_format($item->total_price) ?></td>
		</tr>
		<?php } ?>
	</table>

</body>
</html>
