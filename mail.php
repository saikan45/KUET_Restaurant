<?php
    $to = 'demo@spondonit.com';
    $name = $_POST["name"];
    $email= $_POST["email"];
    $guests= $_POST["guests"];
    $phone= $_POST["meal"];
    $notes= $_POST["notes"];
    


    $headers = 'MIME-Version: 1.0' . "\r\n";
    $headers .= "From: " . $email . "\r\n"; // Sender's E-mail
    $headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";

    $message ='<table style="width:100%">
        <tr>
            <td>'.$name.'  '.$email.'</td>
        </tr>
        <tr><td>Email: '.$guests.'</td></tr>
        <tr><td>phone: '.$meal.'</td></tr>
        <tr><td>Text: '.$notes.'</td></tr>
        
    </table>';

    if (@mail($to, $email, $message, $headers))
    {
        echo 'The message has been sent.';
    }else{
        echo 'failed';
    }

?>
