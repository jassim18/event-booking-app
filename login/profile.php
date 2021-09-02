<?php

$db = mysqli_connect('mysql-47600-0.cloudclusters.net','admin','vZq2ULPj','userdata','19895');
if(!$db){
    echo "Database Connection Failed";
}else{
    $username = $_POST['username'];
    $query = $db->query("SELECT events FROM login WHERE username = '".$username."'");
   $result ;
   while($rowData = $query->fetch_assoc()){
  
   
       $result =$rowData['events'];
   }
      echo json_encode($result);
}
?>