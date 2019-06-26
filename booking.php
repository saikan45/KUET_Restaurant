
            <?php

 $name = $_POST['name'];
$date=$_POST['date'];
$time=$_POST['time'];
$guest=$_POST['guest'];
$budget=$_POST['budget'];
$c_name=$_POST['c_name'];
$email=$_POST['email'];
$phone=$_POST['phone'];
$msg=$_POST['msg'];
if (!empty($name) || !empty($date) || !empty($time) || !empty($guest) || !empty($budget) || !empty($c_name)|| !empty($email)|| !empty($phone)|| !empty($msg)) {
 $host = "localhost";
    $dbUsername = "root";
    $dbPassword = "";
    $dbname = "porosh";
    //create connection
    $conn = new mysqli($host, $dbUsername, $dbPassword, $dbname);
    if (mysqli_connect_error()) {
     die('Connect Error('. mysqli_connect_errno().')'. mysqli_connect_error());
    } else {
     //$SELECT = "SELECT email From booking Where email = ? Limit 1";
     $INSERT = $conn->prepare("INSERT Into booking (name, date, time, guest,budget,c_name,email,phone,msg) values(?, ?, ?, ?, ?, ?,?,?,?)");
     $INSERT->bind_param("ssssissss", $name, $date, $time, $guest, $budget, $c_name, $email, $phone, $msg);

     if($INSERT->execute()===TRUE) {
         echo 'Thanks For Your Response.We will contact With you '.'<br>';
     }

    }

}
?>