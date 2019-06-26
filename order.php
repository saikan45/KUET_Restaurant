            <?php

$t_name = $_POST['name'];

$quantity=$_POST['quantity'];
$amount=$_POST['amount'];
$t_system=$_POST['system'];
$t_number=$_POST['number'];

if (!empty($t_name) || !empty($quantity) || !empty($amount) || !empty($t_system)  || !empty($t_number)) {
$host = "localhost";
   $dbUsername = "root";
   $dbPassword = "";
   $dbname = "porosh";
   //create connection
   $conn = new mysqli($host, $dbUsername, $dbPassword, $dbname);
   echo $t_name.'<br>'.$quantity.'<br>'.$amount.'<br>'.$t_system.'<br>'.$t_number.'<br><br><br>';
   if (mysqli_connect_error()) {
    die('Connect Error('. mysqli_connect_errno().')'. mysqli_connect_error());
   } else {
    //$SELECT = "SELECT email From booking Where email = ? Limit 1";
    $SQL = $conn->prepare("INSERT Into food (t_name, quantity, amount, t_system,t_number) values(?, ?, ?, ?, ?);");
     $SQL->bind_param("siiss",$t_name,$quantity,$amount,$t_system,$t_number);

    if($SQL->execute()===TRUE) {
        echo 'Thanks For Your Response.You will get your food early '.'<br>';
    }
    else
    {
        echo "Error:<br>".$conn->error;
    }

    }

}
?>
