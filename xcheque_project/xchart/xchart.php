<?php
/**
* xchart plugin
* This plugin allows you to insert a chart into a content item
* Author: bernie
* Copyright (C) 2012. xcheque.com. All Rights Reserved
* License: GNU/GPL http://www.gnu.org/copyleft/gpl.html
* Website: http://www.xcheque.com
* v1.0 May 25, 2012
*/

defined( '_JEXEC' ) or die( 'Direct Access to this location is not allowed.' );

jimport( 'joomla.event.plugin' );
jimport( 'joomla.language.helper');

class plgContentxchart extends JPlugin {

	function plgContentxchart( &$subject, $params ) {
		parent::__construct( $subject, $params );
 	}

	function onContentPrepare( $context, &$row, &$params, $limitstart=0 ) {

		$allow_multiple = 1;
		
//		$regex_base = '\{(xchart|include_intro|include_fulltext|include_title_only|include_title_only_h4)\s+(([a-zA-Z]{2})?\s*(\d+)\s*(.*?))\}';
		$regex_base = '\{(xchart)\s+(([a-zA-Z]{2})?\s*(\d+)\s*(.*?))\}';		
		
		$regex = "/(.*?)$regex_base(.*)/si";
		$regex2 = "/$regex_base/si";

		$id = JRequest::getCmd('id');
		if (preg_match('/^(\d+)/', $id, $matches)) $id = $matches[1];

		$this->processed = array($id);
		$nested = 1;

		$document =& JFactory::getDocument();
		$document->addCustomTag('<script type="text/javascript" src="amcharts/jquery-1.7.2.min.js"></script>');
		$document->addCustomTag('<script type="text/javascript" src="amcharts/amcharts.js"></script>');

		$output = '';

		$contents = $row->text;
		$found = preg_match($regex, $contents, $matches);
		if (!$found) return true;

		$level = 0;
		while ($found) {

			if (preg_match('/nested=0/', $matches[3], $str3)) $nested = 0;
			if ($level==0) unset($maxlevel);
			if (preg_match('/level=(\d+)/i', $matches[3], $str3) && $level==0) $maxlevel = $str3[1];

			$include_id = $matches[5];
			$lang = $matches[4];
			$str = '';
			
			//we allow multiple articles by default..
			$allow_multiple = 1;
			
			if ($allow_multiple) {
				$str = $this->process(array('', $matches[2], $matches[3]));
			} else {
				if (in_array($include_id, $this->processed)) {
				} else {
					$this->processed[] = $include_id;
					$str = $this->process(array('', $matches[2], $matches[3]));
				}
			}
			
			$output .= $matches[1];
			$output .= $str;
			$contents = $matches[7];
			$found = preg_match($regex, $contents, $matches);
			if ($nested==0) {
			} else {
				if (!$found) {
					++$level;
					if (isset($maxlevel) && $level>=$maxlevel) break;
					$found = preg_match($regex, $output.$contents, $matches);
					if ($found) {
						$output = '';
					}
				}
			}
		}
		$output .= $contents;
		$row->text = $output;
		$row->text = preg_replace( $regex2, '', $row->text );
		return true;
	}
	
	function process($matches){
		
		/* GET CHART PLUGIN PARAMETERS */
		
		$params = explode(",", $matches[2]); 
		
		$data_id = $params[0];
		$settings_id = $params[1];
		$cht_type = $params[2];
		
		if ($params[3] == null) { 
				$width = "100%"; 
			} else {
				$width = $params[3];
			}
			
		if ($params[4] == null) { 
				$hratio = 3/4; 
			} else {
				$hratio = $params[4];
			}					
		
		/* ASSIGN A RANDOM ID TO THE CHART DIV */
		
		$randomDivID = rand();
				
		/* SEND CHART CODE TO BROWSER */
	
		return '<div id="chartdiv'.$randomDivID.'" style="width: '.$width.'; position:relative;"></div>
			<script> 
			$.ajax({type: "GET", url: "http://xcheque/amcharts/charts/'.$cht_type.'.php?div_id='.$randomDivID.'&data_id='.$data_id.'&set_id='.$settings_id.'", dataType: "script",success: function(){
						
							var a = document.getElementById("chartdiv'.$randomDivID.'"); 						
							var w = a.offsetWidth;	
							var h = w *'.$hratio.';
							a.style.height = h+"px";
							chart.write("chartdiv'.$randomDivID.'");						
					}
				});	
			</script>';
	}

}

?>
