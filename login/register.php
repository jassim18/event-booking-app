<?php

$db = mysqli_connect('mysql-47600-0.cloudclusters.net','admin','vZq2ULPj','userdata','19895');
if(!$db){
    echo "Database Connection Failed";
}else{
   
$username = $_POST['username'];
$password = $_POST['password'];

$sql = "SELECT * FROM login WHERE username = '".$username."' AND password = '".$password."'";
$result = mysqli_query($db,$sql);
$count = mysqli_num_rows($result);
if($count==1){
    echo json_encode("Error");
}
else{
    $insert = "INSERT INTO login(username,password) VALUES('".$username."','".$password."')";
    $insertt = "INSERT INTO events(username) VALUES('".$username."')";
    $inserttt = "INSERT INTO workshop(username) VALUES('".$username."')";
    $query = mysqli_query($db,$insert);
    $queryy = mysqli_query($db,$insertt);
    $queryyy = mysqli_query($db,$inserttt);
    if($query && $queryy &&  $queryyy){
        echo json_encode("Success");
    }else{
        echo json_encode("Error");
    }
}
}
?>