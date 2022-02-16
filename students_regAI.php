<?php
include 'connection/dbconnect.php';
if(isset($_FILES['file']) && isset($_POST['name']) && isset($_POST['matnumber'])){

  $name = $_POST['name'];
  $matnumber = $_POST['matnumber'];

  $matnumber = strtolower($matnumber);

  $photo = "";
  $query = "SELECT * FROM students WHERE student_id='$matnumber' LIMIT 1";
  $result = mysqli_query($conn, $query);
  if(mysqli_num_rows($result)>0){
    while($row = mysqli_fetch_array($result)){
      $photo = $row['photo'];
    }
  }
  $post_id = uniqid();

  $file_path = "images/students/";

  $filename = $_FILES['file']['name'];
  $unique_file_name = $post_id.$filename;

  $file_tmp_name = $_FILES['file']['tmp_name'];

  $target_file = $file_path.basename($unique_file_name);
 
  $query2 = "SELECT * FROM students WHERE student_id='$matnumber' LIMIT 1";
  $result2 = mysqli_query($conn, $query2);
  if(mysqli_num_rows($result2)>0){
    if(unlink("images/students/$photo")){
           // transfer the file to it normal position
      if(move_uploaded_file($file_tmp_name, $target_file)){
            $query3 = "UPDATE students SET name='$name', photo='$unique_file_name' WHERE student_id='$matnumber' LIMIT 1";
            $result3 = mysqli_query($conn, $query3);
            if($result3){
              echo true;
            }
      }
    }else{
      // occurs if no file exist to delete
      if(move_uploaded_file($file_tmp_name, $target_file)){
        $query5 = "UPDATE students SET photo='$unique_file_name' WHERE student_id='$matnumber' LIMIT 1";
            $result5 = mysqli_query($conn, $query5);
            if($result5){
              echo true;
            }
      }
    }
  }else{
    // occurs if no students is found in the database
    if(move_uploaded_file($file_tmp_name, $target_file)){
      $query4 = "INSERT INTO students (name, student_id, photo) VALUES('$name', '$matnumber', '$unique_file_name')";
      $result4 = mysqli_query($conn, $query4);
      if($result4){
        echo true;
      }
    }
  }
}

?>