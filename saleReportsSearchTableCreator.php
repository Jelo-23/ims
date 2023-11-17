<?php
	require_once('../../inc/config/constants.php');
	require_once('../../inc/config/db.php');
	
	$uPrice = 0;
	$qty = 0;
	$totalPrice = 0;
	
	$saleDetailsSearchSql = 'SELECT * FROM sale';
	$saleDetailsSearchStatement = $conn->prepare($saleDetailsSearchSql);
	$saleDetailsSearchStatement->execute();

	$output = '<table id="saleReportsTable" class="table table-sm table-striped table-bordered table-hover" style="width:100%">
				<thead>
					<tr>
						<th>Sale ID</th>
						<th>Item Number</th>
						<th>Customer ID</th>
						<th>Customer Name</th>
						<th>Item Name</th>
						<th>Sale Date</th>
						<th>Return Date</th>
						<th>Quantity</th>
					</tr>
				</thead>
				<tbody>';
	
	// Create table rows from the selected data
	while($row = $saleDetailsSearchStatement->fetch(PDO::FETCH_ASSOC)){
		$qty = $row['quantity'];
		
		
		$output .= '<tr>' .
						'<td>' . $row['saleID'] . '</td>' .
						'<td>' . $row['itemNumber'] . '</td>' .
						'<td>' . $row['customerID'] . '</td>' .
						'<td>' . $row['customerName'] . '</td>' .
						'<td>' . $row['itemName'] . '</td>' .
						'<td>' . $row['saleDate'] . '</td>' .
						'<td>' . $row['returnDate'] . '</td>' .
						'<td>' . $row['quantity'] . '</td>' .
					'</tr>';
	}
	
	$saleDetailsSearchStatement->closeCursor();
	
	$output .= '</tbody>
					<tfoot>
						<tr>
							
						</tr>
					</tfoot>
				</table>';
	echo $output;
?>


