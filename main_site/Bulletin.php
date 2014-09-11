<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional// EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml11-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang = "en">
<head>
    <meta http-equiv="content-type" content="text/html;charset=iso-8859-1">
    <title>Nakadale Blog</title>
	<?php include "css_style6.php" ?>
<body>
<div id="container">
	<!--Header area of webpage-->
	<div style="position: absolute; top:10px; left:10px;">
	<a href="index6.php" style="color:white;"><img src="Img/wandering nakadale1.png" style="border-spacing:0px;border:0px;"></a>
	<!--start of navigation area of webpage-->
	<!--end of navigation area of webpage-->
	</div>
	<!--end of header of webpage-->
	<div id="body" style="position: absolute;top:257px;left:10px;width:980px;">
		<!-- right area of webpage -->
		<table>
		<tr><td valign="top" style="width:820px;">
		<table style="position:relative;left:5px;width:800px;color:white;background-color:RGB(73,85,137);"><tr><td>
		<table style="position:relative;left:10px;"><tr><td><p>
		Welcome!
		<?php 
		$name = $_GET['ID'];
		echo $name.',';
		?>
		<p></td></tr></table>
		</td></tr>
		<tr><td>
		<table cellpadding=0><tr>
		<td>
		<form name="form1" method="post" action="checklogin.php">
		<input type="submit" name="Submit" value="Create Post" style="width:125px;height:30px;"></form></td>
		<td>
		<form name="form1" method="post" action="checklogin.php">
		<input type="submit" name="Submit" value="Find Post" style="width:125px;height:30px;"></form></td>
		</tr></table>
		</td></tr>
		<tr><td>
		<div style="position:relative;left:10px;width:700px;"><br />
		<?php
		$title = $_POST['post_title'];
		$post = $_POST['post'];
		$date = date("Y-m-d");
		$time = date("H:i:s A");
		$user = "root";
		//$pass = "dive";
		$db = "sheaqu_dive";
		$link = @mysql_connect( "localhost", $user, $pass );
		//$user = "sheaqu_dive";
		//$pass = "dive";
		//$db = "sheaqu_dive";
		//$link = @mysql_connect( "mysql4.freehostia.com", $user, $pass );
		if (!$link) {
		die("Couldn't connect to MySQL: ".mysql_error());
		}
		mysql_select_db($db,$link)
		or die ( "Couldn't open $db: ".mysql_error() );
		if ($post != NULL){
		$query = "INSERT INTO Main_bulletin( post_title, post_date, post_time, post_content)
		values( '".$title."', '".$date."', '".$time."', '".$post."')";
		mysql_query($query,$link)
		or die ( "INSERT error: ".mysql_error() );}
		$result = @mysql_query("SELECT * FROM Main_bulletin ORDER BY post_ID DESC",$link);
		$num_rows = mysql_num_rows( $result );
		echo '<table border=1>';
		while ($row = mysql_fetch_array($result, MYSQL_ASSOC)){ 
		echo '<tr><td>';
		echo '<input type="hidden" name="hideval" value="'.$row['post_id'].'" />';
		echo $row['post_date'].', '.$srow['post_title'].'<br /></td></tr>';
		echo '<tr><td>'.wordwrap($row['post_content'],50,"\n",true).'<p></td></tr>';
		}
		echo '</table>'
		?>
		</div>
		</td></tr></table>
		</td><td valign="top" align="center" style="width:160px;">
		<?php include "post_navi.php" ?>
		</td></tr></table>
	</div>
</div>

		<!--Footer of webpage-->
		<?php include "footer6.php" ?>
		<!--end of footer-->

</body>
</html>