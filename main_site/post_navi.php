			<?php
			$name = $_GET['ID'];
			echo '<div style="background-image: url(Img/navigation2.png);background-repeat: no-repeat;width:160px;font-size:23px;">';
			echo '<font style="font-size:16px;left:830px;position:absolute;"><b>NAVIGATION</b></font><br />';
			echo '<ul class="navi" style="text-align:right;">';
			echo '<li><a href ="post_index.php?ID='.$name.'" style="color:white;">HOME</a></li>';
			echo '<li><a href ="bulletin.php?ID='.$name.'" style="color:white;">BULLETIN</a></li>';
			echo '<li><a href ="" style="color:white;">USERS</a></li>';
			echo '<li><a href ="Logout.php" style="color:white;">LOG OFF</a></li>';
			echo '</ul><br />';
			echo '</div>';
			?>