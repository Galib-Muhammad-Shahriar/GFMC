<?php
$servername = "www.gbel-ems.com";
$databaseName = "gbelems_automation";
$username = "gbelems_root";
$password = "galib123!";


$link = new mysqli( $servername, $username, $password, $databaseName );



if ($link->connect_error) {

    die("Connection failed: " . $link->connect_error);

}
echo "Connected successfully";

    $temp=$_GET["temp"];

	$hum=$_GET["hum"];

	$door=$_GET["door"];





// Attempt insert query execution

echo $temp;

echo $hum;

echo $door;

echo "";





 





$sql = "INSERT INTO `sensor_data` (`id`, `time`, `temp`, `hum`, `door`) VALUES (NULL, CURRENT_TIME(), '$temp', '$hum', '$door')";



if ($link->query($sql) === TRUE) {

  echo "New record created successfully";

} else {

  echo "Error: " . $sql . "<br>" . $link->error;

}



$link->close();





?>