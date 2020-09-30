<?php 	
//connect db ////////////////////////////////////////
$mysqli = new mysqli("localhost","test123","test123","aiotdb");

// Check connection
if ($mysqli -> connect_errno) {
  echo "Failed to connect to MySQL: " . $mysqli -> connect_error;
  exit();
}






//sql query ///////////////////////////////////
if ($result = $mysqli -> query("select * from sensors")) {
  // echo "Returned rows are: " . $result -> num_rows;
  // Free result set
}



//read data ///////////////////////////////////

 $data =[];
 $i =0;

 while($row= $result -> fetch_array(MYSQLI_NUM)){
 		$data[$i]=$row;
 		$i = $i+1;
 }

//json ////////////////////////////////////////

echo json_encode($data);

//close ///////////////////////////////////
$result -> free_result();
$mysqli -> close();
 ?>