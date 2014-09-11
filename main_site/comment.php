			<div style="width:1000px;background-image: url(Img/background1.png);background-repeat: repeat;">
			<div style="position:relative;left:50px;">
			<?php
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
			echo '<br />';
			$result = @mysql_query("SELECT * FROM main_bulletin2 ORDER BY post_ID DESC",$link);
			$num_rows = mysql_num_rows( $result );
			while ($row = mysql_fetch_array($result, MYSQL_ASSOC)){
			$count++;
			if (1 == $count % 2){
			echo '<table style="width:700px;font-size:14px;background-color:RGB(100,100,100);background-repeat: repeat;"><tr><td style="width:650px;">';
			echo '<div style="color:white;position:relative;left:10px;"><br />';
			echo wordwrap($row['post_content'],40,"\n",true).'</div><br />';
			echo '</td><td valign=top align=center style="font-size:22px;width:50px;">';
			echo '<br />'.$count.'<br /></td></tr></table>';
			}
		    if (0 == $count % 2){
			echo '<table style="width:700px;font-size:14px;"><tr><td style="width:650px;">';
			echo '<div style="color:black;position:relative;left:10px;"><br />';
			echo wordwrap($row['post_content'],50,"\n",true).'</div><br />';
			echo '</td><td valign=top align=center style="font-size:22px;width:50px;color:black;">';
			echo '<br />'.$count.'<br /></td></tr></table>';
			}
			}
			?>
			</div>
			<br /><br />
			</div>