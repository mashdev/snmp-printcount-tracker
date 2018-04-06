<!DOCTYPE html>
<?php
//include('/home/paul/include.php');
//include('includes/php/queries_Current.php');
include("includes/classes/printCount.class.php");
date_default_timezone_set('MST');
?>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- <link rel="stylesheet" type="text/css" href="includes/css/bootstrap/css/bootstrap.css" /> -->
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="includes/css/printers.css" />
	<meta http-equiv="refresh" content="180" />
</head>
<body>
<script src="http://code.jquery.com/jquery.js"></script>
<div id="container">
<?php 
$pcount = new printerCount();
echo "<p><h4> Peoria Printers </h4></p>";
$pcount->selectAll("peoria_printers");
echo "<p><h4> Glendale Printers </h4></p>";
$pcount->selectAll("glendale_printers");
echo "<p><h4> Surprise Printers </h4></p>";
$pcount->selectAll("surprise_printers");
echo "<p><h4> Estrella Printers </h4></p>";
$pcount->selectAll('estrella_printers');
//validation code for quickbooks 2011: 455067

?>
</div>

</body>
</html>
