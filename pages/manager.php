<?php include("header.php");
require('bd_connect/db.php');
include("bd_connect/auth_session.php"); 


?>
<h1>заявки пользователей</h1>


<?php 


$sql3 = "SELECT workout.id,workout.first_namee,first_name,img,cost FROM workout inner join books on workout.lek_id = books.id";
$result = $con->query($sql3);


for($data = []; $row = mysqli_fetch_assoc($result); $data[]=$row)
{

}
$i=0;



$cost=0;
             

// ini_set('session_gc_maxlifetime', 1);





?>

<a href="mynots.php" class="login-button">Мои ноты</a>


<div class="popular-row">
<?php foreach($data as $elem)  {

$id= $elem['id'];
echo '
<div class="popular-card">
<img src="../img/'.$elem['img'].'" alt="" class="imgbooks">
        <h2>'.$elem['first_name'].'</h2>
        <h2>цена: '.$elem['cost'].'$</h2>
        <h2>Пользователь: '.$elem['first_namee'].'</h2>';
        echo ' <form method="post"><input type="submit" value="Отменить заказ" class="btn-del" name='.$id.'></form>';
        if(isset($_POST["$id"])){
        $query="DELETE FROM `workout` WHERE id=$id";
        mysqli_query($con , $query) or die ;
        }
    
  
        echo ' </div>';  
} ?>

</div>





