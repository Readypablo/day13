


<?php 






include("header.php");
require('bd_connect/db.php');
include("bd_connect/auth_session.php");

if($_SESSION['user_name_last'] == 'admin'){
echo '<div class="block-changes">
<h2>Панель изменения товара</h2>
<form  method="post" id="form-changes">

<h3 class="name-card">ID товара</h3>
<input type="text" class="inp-chang" name="id" required>

<h3 class="name-card">Название товара</h3>
<input type="text" class="inp-chang" name="name" required>

<h3 class="name-card">цена</h3>
<input type="text" class="inp-chang" name="cost" required>

<h3 class="name-card">Имя файла изображения</h3>
<input type="text" class="inp-chang" name="silk" required>
<p class="ss">пример: 1.jpg , 2.png (файлые которые есть у вас)</p>

<input type="submit" value="изменить" class="btn-chang" name="send">
</form>
</div>';



if(isset($_POST['send'])) {
        $sql2 = 'SELECT * from books ';
      
        $name = stripslashes($_REQUEST['name']);    
        $name = mysqli_real_escape_string($con, $name);
        
        $cost = stripslashes($_REQUEST['cost']);    
        $cost = mysqli_real_escape_string($con, $cost);

        $id = stripslashes($_REQUEST['id']);    
        $id = mysqli_real_escape_string($con, $id);
      
        $silk = stripslashes($_REQUEST['silk']);
        $silk = mysqli_real_escape_string($con, $silk);
       
      
        $allowedPattern = '/^\d+\.png$/';
        if (preg_match($allowedPattern, $silk)){
        
      
            $query = "UPDATE books SET first_name='$name', cost='$cost',img='$silk' WHERE id='$id'";
      
            $ult = mysqli_query($con, $query);
      
            // чекаем все поля все ли хорошо там
      
            if($ult){
                echo "<div class='form'>
                <h3>изменили товар</h3><br/>
                </div>";
            }else{
                echo "<div class='form'>
                <h3>Ты где то напакостил</h3><br/>
                </div>";
                 }    
      
        } else {
            // Введенные данные содержат запрещенные символы
            echo "Ошибка! Недопустимые символы в данных.";
        }
       
      
      
      }
}





?>
<hr>
<?php 




if($_SESSION['user_name_last'] == 'admin'){

    echo '<div class="block-changes">
    <h2>Панель добавления товара</h2>
    <form  method="post" id="form-changes">
    
    <h3 class="name-card">Название товара</h3>
    <input type="text" class="inp-chang" name="namee" required>
  
    <h3 class="name-card">цена</h3>
    <input type="text" class="inp-chang" name="costt" required>
    
    <h3 class="name-card">Имя файла изображения</h3>
    <input type="text" class="inp-chang" name="silkk" required>
    <p class="ss">пример: 1.jpg , 2.png (файлые которые есть у вас)</p>
    
    <input type="submit" value="Добавить" class="btn-chang" name="sendd">
    </form>
    </div>';
  if(isset($_POST['sendd'])) {
    $sql2 = 'SELECT * from books ';
  
    $name = stripslashes($_REQUEST['namee']);    
    $name = mysqli_real_escape_string($con, $name);
    $cost = stripslashes($_REQUEST['costt']);    
    $cost = mysqli_real_escape_string($con, $cost);
  
    $silk = stripslashes($_REQUEST['silkk']);
    $silk = mysqli_real_escape_string($con, $silk);
   
  
    $allowedPattern = '/^\d+\.png$/';
    if (preg_match($allowedPattern, $silk)){
    
  
        $query = "INSERT into `books` (first_name,cost, img) VALUES ('$name', '$cost','$silk')";
  
        $ult = mysqli_query($con, $query);
  
        // чекаем все поля все ли хорошо там
  
        if($ult){
            echo "<div class='form'>
            <h3>Добавили товар</h3><br/>
            </div>";
        }else{
            echo "<div class='form'>
            <h3>Ты где то напакостил</h3><br/>
            </div>";
             }    
  
    } else {
        // Введенные данные содержат запрещенные символы
        echo "Ошибка! Недопустимые символы в данных.";
    }
   
  
  
  }}


?>
<script src="../js/js.js"></script>