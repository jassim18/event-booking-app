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

	if ($count == 1) {
		echo  json_encode("Success");
	}else{
		echo json_encode("Error");
	}
	}
?>