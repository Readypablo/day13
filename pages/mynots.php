<?php include("header.php");
require('bd_connect/db.php');
include("bd_connect/auth_session.php"); ?>


<h1>список ваших нот</h1>


<?php


$sql3 = "SELECT workoutnot.id,workoutnot.first_nameee,first_namu,img,cost FROM workoutnot inner join nots on workoutnot.not_id = nots.id";
$result = $con->query($sql3);


for($data = []; $row = mysqli_fetch_assoc($result); $data[]=$row)
{

}
$i=0;



$cost=0;
             

// ini_set('session_gc_maxlifetime', 1);





?>



<div class="popular-row">
<?php foreach($data as $elem)  {

if($_SESSION['user_name_us'] == $elem['first_nameee']){

$id= $elem['id'];
echo '
<div class="popular-card">
<img src="../img/nots/'.$elem['img'].'" alt="" class="imgbooks">
        <h2>'.$elem['first_namu'].'</h2>
        <h2>цена: '.$elem['cost'].'$</h2>';
  
      
  
        echo ' </div>';  }
} ?>

</div>