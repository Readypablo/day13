<?php include("header.php");
require('bd_connect/db.php');

?>


<p class="text-info-p">
                          <form action="" method="post">
            <?php 
            $sql3 = 'SELECT * from Reviews order by rand() ';
            $result2 = $con->query($sql3);
            while ($row2 = $result2->fetch_assoc()) {
                echo '<div class="review-item">';
                echo $row2['Content'];
                $id= $row2['id'];     
          
           
        
                echo '</div>';


            }

            
?></form>