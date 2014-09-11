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
	<div id="body" style="position: absolute;top:257px; left:10px;width:980px;">
		<!-- right area of webpage -->
		<table>
		<tr><td valign="top" style="width:820px;">
			<div style="background-image: url(Img/post2.png);background-repeat: no-repeat;width:810px;">
			<?php
			$post_id = $_GET['ID'];
			$user = "root";
			//$pass = "dive";
			$db = "sheaqu_dive";
			$link = @mysql_connect( "localhost", $user, $pass );
			//$user = "sheaqu_dive";
			//$pass = "dive";
			//$db = "sheaqu_dive";
			//$link = @mysql_connect( "mysql4.freehostia.com", $user, $pass );
			//echo $post_id;
			if (!$link) {
			die("Couldn't connect to MySQL: ".mysql_error());
			}
			mysql_select_db($db,$link)
			or die ( "Couldn't open $db: ".mysql_error() );
			echo '<div style="position:absolute;left:50px;width:700px;font-size:12px;color:black;">';
			$result = @mysql_query("SELECT * FROM main_bulletin WHERE post_id = ".$post_id,$link);
			$num_rows = mysql_num_rows( $result );
			$row = mysql_fetch_assoc($result);
			echo '<br /><div style="font-size:14px;">'.$row['post_title'].',&nbsp&nbsp '.$row['post_date'].'</div><br /><br />';
			echo ''.wordwrap($row['post_content'],106,"\n",true).'<p>';
			echo '</div>';
			?>
			
			<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
			<br /><br /><br /><br /><br /><br /><br /><br /><br /> 
			<?php
			$post_id1 = $_GET['ID'];
			$post_id2 = $_GET['ID'];			
			$post_id1 = $post_id1 - 1;
			$post_id2 = $post_id2 + 1;
			echo '<a href="msg.php?ID='.$post_id1.'" style="color:RGB(255,96,0);font-size:13px;position:absolute;left:25px;">';
			echo '<b>< Previous Post</b></a>';
			echo '<a href="msg.php?ID='.$post_id2.'" style="color:RGB(255,96,0);font-size:13px;position:absolute;left:715px;">';
			echo '<b>Next Post ></b></a>';
			?>
			<br /><br /><br />
			</div>
		</td><td valign="top" align="center" style="width:160px;">
		<?php include "comments6.php" ?>
		</td></tr></table>		
	</div>
</div>

<?php include "postcomment.php" ?> 

		<!--comments-->
		<?php include "comment.php" ?>
		<!--end of comments-->
		
		<!--Footer of webpage-->
		<?php include "footer6.php" ?>
		<!--end of footer-->
</body>
</html>