<?php
$page = $_SERVER['PHP_SELF'];
$sec = "5";
?>
<html>
    <head>
        
    <meta http-equiv="refresh" content="<?php echo $sec?>;URL='<?php echo $page?>'">

<html><head>

    <title>Sensor Data</title>
	<style>

	@import "https://fonts.googleapis.com/css?family=Montserrat:300,400,700";
		h2{
	    color:white;
	}
.rwd-table {
  margin: 1em 0;
  min-width: 300px;
}
.rwd-table tr {
  border-top: 1px solid #ddd;
  border-bottom: 1px solid #ddd;
}
.rwd-table th {
  display: none;
  font-size: xx-large;
}
.rwd-table td {
  display: block;
  font-size: xx-large;
}
.rwd-table td:first-child {
  padding-top: 0.5em;
}
.rwd-table td:last-child {
  padding-bottom: 0.5em;
  
}
.rwd-table td:before {
  content: attr(data-th) ": ";
  font-weight: bold;
  width: 6.5em;
  display: inline-block;
}
@media (min-width: 480px) {
  .rwd-table td:before {
    display: none;
  }
}
.rwd-table th,
.rwd-table td {
  text-align: left;
}
@media (min-width: 480px) {
  .rwd-table th,
  .rwd-table td {
    display: table-cell;
    padding: 0.25em 0.5em;
  }
  .rwd-table th:first-child,
  .rwd-table td:first-child {
    padding-left: 0;
  }
  .rwd-table th:last-child,
  .rwd-table td:last-child {
    padding-right: 0;
  }
}

body {
  padding: 2em 2em;
  font-family: Montserrat, sans-serif;
  -webkit-font-smoothing: antialiased;
  text-rendering: optimizeLegibility;
  color: #444;
  background: #34495e;
}

h1 {
  font-weight: normal;
  letter-spacing: -1px;
  color: #34495e;
}

.rwd-table {
  background: #34495e;
  color: #fff;
  border-radius: 0.4em;
  overflow: hidden;
}
.rwd-table tr {
  border-color: #46637f;
}
.rwd-table th,
.rwd-table td {
  margin: 0.5em 1em;
}
@media (min-width: 480px) {
  .rwd-table th,
  .rwd-table td {
    padding: 1em !important;
  }
}
.rwd-table th,
.rwd-table td:before {
  color: #dd5;
}

table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  text-align: left;
  padding: 8px;
}

</style>
    </head>
    <body>   
      <div class="content">
    
    <div class="container">
      <h2 >GFMC Automation</h2>
      

      <div class="table-responsive">


	
	
	
<?php

$servername = "www.gbel-ems.com";
$username = "gbelems_root";
$password = "galib123!";
$databaseName = "gbelems_automation";

$link = new mysqli($servername,$username,$password,$databaseName);

if ($link->connect_error) {
    die("Connection failed: " . $link->connect_error);
} 




$sql = "SELECT * FROM ( SELECT * FROM `sensor_data` ORDER BY id DESC LIMIT 4 )Var1 ORDER BY id DESC";
if($result = mysqli_query($link, $sql)){
    if(mysqli_num_rows($result) > 0){
        echo "<table id='content'class='rwd-table'>";
        echo "<thead>";
            echo "<tr>";
                echo "<th scope='col'>Time</th>";
                echo "<th scope='col'>Tempareture</th>";
                echo "<th scope='col'>Humidity</th>";
            echo "</tr>";
        echo "</thead>";
			echo "<script id=\"scriptRun\">var arrays=[];</script>";
			echo "<tbody>";
        while($row = mysqli_fetch_array($result)){
            echo "<tr scope='row'>";
                echo "<td>" . $row['time'] . "</td>";
                echo "<td>" . $row['temp'] . "</td>";
                echo "<td>" . $row['hum'] . "</td>";

            echo "</tr>";
        }
        echo "</tbody>";
           echo mysqli_fetch_array($result);
        
        echo "</table>";
        echo "</div>";
        echo "</div>";
        echo "</div>";


        // Free result set
        mysqli_free_result($result);
    } else{
        echo "No records matching your query were found.";
    }
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
}

// Close connection
mysqli_close($link);
?>
</body>
</html>