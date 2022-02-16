<?php
include 'connection/dbconnect.php';
if(isset($_FILES['file']) && isset($_POST['name']) && isset($_POST['position']) && isset($_POST['email']) && isset($_POST['password']) && isset($_POST['ref_id'])){

  $name = $_POST['name'];
  $position = $_POST['position'];
  $email = $_POST['email'];
  $password = $_POST['password'];
  $ref_id = $_POST['ref_id'];

  $position = strtolower($position);

  $post_id = uniqid();

  $file_path = "images/lecturers/";

  $filename = $_FILES['file']['name'];
  $unique_file_name = $post_id.$filename;

  $file_tmp_name = $_FILES['file']['tmp_name'];

  $target_file = $file_path.basename($unique_file_name);
 
  // occurs if no students is found in the database
  if(move_uploaded_file($file_tmp_name, $target_file)){
    $query4 = "INSERT INTO lecturers (name, email, password, lecturer_id, photo, position, ref_id) VALUES('$name', '$email', '$password', '$post_id', '$unique_file_name', '$position', '$ref_id')";
    $result4 = mysqli_query($conn, $query4);
    if($result4){
      echo true;
    }
  }
}

?>