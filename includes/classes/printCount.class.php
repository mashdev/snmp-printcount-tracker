<?php 

$db = mysql_connect("[host]","[username]","[password]");
if(!$db){
	echo "could not connect to database";
}
$db2 = mysql_select_db("print_count");
if(!$db2){
	echo "could not find the database";	
}
class printerCount {
	function selectAll($location)
	{
	$sql = mysql_query
	("
	SELECT pm.location, pm.make_model, printer_name, pm.ip_addr, MAX(page_count) as PC, MAX(t_stamp)
	FROM `$location` pp
	INNER JOIN printer_mstr pm
	ON pm.id = pp.printer_name
	GROUP BY printer_name
	ORDER BY printer_name, page_count ASC
	");
	echo "<table class=\"table table-striped table-hover\" width=\"50%\">";
	while($row = mysql_fetch_array($sql)) 
	{
		echo "<tr> <td>".$row['make_model']."</td> <td>" . $row['printer_name'] . "</td><td>" . number_format($row['PC']) . 
		"</td> <td> <a href=\"http://". trim($row['ip_addr']," ") ."\" target=\"_blank\">". $row['ip_addr'] ."</a></td> </tr>"; 
	}
	echo "</table><br />";
	return;
	}

}

