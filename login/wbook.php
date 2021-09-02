<?php

$db = mysqli_connect('mysql-47600-0.cloudclusters.net','admin','vZq2ULPj','userdata','19895');
if(!$db){
    echo "Database Connection Failed";
}else{
   
$username = $_POST['username'];
$password = $_POST['password'];

$sql = "SELECT * FROM workshop WHERE username = '".$username."' ";
$result = mysqli_query($db,$sql);
$count = mysqli_num_rows($result);
$final = "SELECT $password FROM workshop WHERE username = '".$username."' ";
    $finalquery = mysqli_query($db,$final);
    $finalqueryy =  mysqli_fetch_array( $finalquery);
   
    if($finalqueryy[0]=="Registered"){
        echo json_encode("Error");
    }else{
            if($count==1){
    
            $sqll = "UPDATE workshop SET $password = 'Registered' WHERE username = '".$username."';";
            $queryy = "UPDATE login SET workshops=concat('$password' , ',' ,workshops ) WHERE username = '".$username."';" ;
            $timon = mysqli_query($db,$sqll);
            $jas = mysqli_query($db,$queryy);
                if($timon){
                  echo json_encode("Success");
                }else{
                    echo json_encode("Error");
                     }
            }
               else{
                  echo json_encode ("failed");
               }
         }
 }
?>