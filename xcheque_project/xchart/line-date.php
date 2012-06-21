<?php

$div_id = $_GET["div_id"];
$data_id = $_GET["data_id"];
$set_id = $_GET["set_id"];

/*
	This is the config for the live server
	public $dbtype = 'mysqli';
	public $host = '10.10.11.39';
	public $user = 'xcheque_admin';
	public $password = 'D9AGVv1Z6W';
	public $db = 'xcheque_mgtrial';

	$con = mysql_connect('10.10.11.39', 'xcheque_admin', 'D9AGVv1Z6W');

	Localhost connect
*/
	
	$con = mysql_connect('localhost', 'root', '');
	
if (!$con)
  {
  die('Could not connect: ' . mysql_error());
  }

$worked = mysql_select_db("xcheque_data", $con);

if (!$worked) {
    die('Not connected : ' . mysql_error());
}

$settings_query = "SELECT * FROM chart_definitions WHERE id = '$data_id'";

$result_definitions = mysql_query($settings_query);

$settings_row = mysql_fetch_array($result_definitions, MYSQL_BOTH);

// Data Table & type 

  $cht_table =  $settings_row["cht_table"];
  $cht_type =  $settings_row["cht_type"];

/*  y range	  */

  $y_min = $settings_row["y_range_min"];
  $y_max = $settings_row["y_range_max"];
  
/*  Data fields    */

  $category = $settings_row["category_name"];
  
  $graph = array();
  $graph[0] =  $settings_row["graph_name_1"];
  $graph[1] =  $settings_row["graph_name_2"];
  $graph[2] =  $settings_row["graph_name_3"];
  $graph[3] =  $settings_row["graph_name_4"];
  $graph[4] =  $settings_row["graph_name_5"];
  $graph[5] =  $settings_row["graph_name_6"];
  $graph[6] =  $settings_row["graph_name_7"];
  $graph[7] =  $settings_row["graph_name_8"];
  $graph[8] =  $settings_row["graph_name_9"];
  $graph[9] =  $settings_row["graph_name_10"];

/* Date range  */

  $from_date = $settings_row["date_range_min"];
  $to_date = $settings_row["date_range_max"];
  $most_recent = $settings_row["most_recent"];
  

/*  Get the chart Date limits */

if (($from_date == null) AND ($to_date == null) AND ($most_recent == null)) {
				$sqldata="SELECT * FROM ".$cht_table.";";
		}
			
if ($most_recent != null) {
		$sqldata = "SELECT Date FROM ".$cht_table.";";
		$lastrow = mysql_num_rows(mysql_query($sqldata));
		$firstrow = $lastrow - $most_recent;
		$sqldata="SELECT * FROM ".$cht_table." LIMIT $firstrow,$lastrow";
	}
	
if (($from_date != null) AND ($to_date != null)) {
		$sqldata="SELECT * FROM ".$cht_table." WHERE Date BETWEEN '$from_date' AND '$to_date' ORDER BY Date"; 
	}

if (($from_date != null) AND ($to_date == null)) {
		$sqldata="SELECT * FROM ".$cht_table." WHERE Date BETWEEN '$from_date' AND '2050-01-10' ORDER BY Date";
	}
		
if (($from_date == null) AND ($to_date != null)) {
			$sqldata="SELECT * FROM ".$cht_table." WHERE Date BETWEEN '1900-01-01' AND '$to_date' ORDER BY Date";
	}

/* Get the chart data */

$result = mysql_query($sqldata);

$javascript = "var mydataProvider = [";

	while ($row = mysql_fetch_array($result, MYSQL_BOTH)) {
	
		/* Fix date formatting */

   		$parts = explode("-",$row['Date']);
   		$datefix = "new Date(".$parts[0].", ".($parts[1]-1).", ".$parts[2].")";

		/* Build data variables */
			 
		   $javascript.=  "{date: ".$datefix;
			
			foreach ($graph as $value) {
				if ($value != null) {
			   $javascript.=  ",".$value.": ".$row[$value];
				}
		   }
	   
		   $javascript.=  "},";
		}
		
		/*  Strip off last comma and close the array */
		
		$javascript = substr($javascript, 0, -1)."];";

/* Get user chart settings */

$sqlset='SELECT * FROM chart_settings WHERE `id` = "'.$set_id.'"';

$result = mysql_query($sqlset);

$setarray = mysql_fetch_array($result, MYSQL_BOTH);

/* Add the settings to the javascript string */

	$javascript.= $setarray['settings'];

/* Add the value range and value data */

	if($y_min != null) { $javascript.= 'valueAxis.minimum = '.$y_min.';';}
	if($y_max != null) { $javascript.= 'valueAxis.maximum = '.$y_max.';';}

	foreach ($graph as $value) {
		  if ($value != null) {
			  $javascript.= '	var graph = new AmCharts.AmGraph();
					  graph.title = "'.$value.'";
					  graph.balloonText = "'.$value.' [[value]]"
					  graph.valueField = "'.$value.'";         
					  chart.addGraph(graph);';
		  	}
 		}

/* Run the script */

echo $javascript;
	
/* Close the database connection*/

mysql_close($con);
	

?>
