<!doctype html>
<html class="no-js " lang="en">


<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<meta name="description" content="Goodness Project Work on Attendance System">

<title>Lecturer Registration</title>
<!-- Favicon-->
<link rel="icon" href="images/icons/logo2.png" type="image/x-icon">
<!-- Custom Css -->
<link rel="stylesheet" href="dashboard/assets/plugins/dropify/css/dropify.min.css">
<link rel="stylesheet" href="dashboard/assets/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="dashboard/assets/css/style.min.css">
<style type="text/css">
    .mybox {
               padding-left: 50px;
               padding-right: 50px;
               margin-top: 240px;
            }
    @media(max-width: 767px){
            .mybox {
               padding-left: 0px;
               padding-right: 0px;
               margin-top: 0px;
            }
        }
</style>
</head>

<body class="theme-blush">
<div class="authentication">    
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12"></div>
            <div class="col-lg-6 col-md-3 col-sm-12 col-xs-12 mybox">
                <div class="card auth_form">
                    <div class="header">
                        <img class="logo" src="images/icons/logo2.png" alt="" style="width: 60px; height: 60px">
                        <h5>Lecturers Registration</h5>
                        <span>Attendance Record Management System</span>
                    </div>
                    <div class="body">
                        <div class="container">
                            <div class="header">
                                <h2>Upload Lecturer Profile Picture</h2>
                            </div>
                            <div class="body">
                                <input type="file" class="dropify" id="file"> 
                            </div>
                        </div>
                        <div class="input-group mb-2">
                            <input type="text" class="form-control" placeholder="Enter Full Name" style="height: 45px" id="name">
                            <div class="input-group-append">
                                <span class="input-group-text"><i class="zmdi zmdi-account-circle"></i></span>
                            </div>
                        </div>
                        <div class="input-group mb-2">
                            <input type="text" class="form-control" placeholder="Enter E-mail" style="height: 45px" id="email">
                            <div class="input-group-append">
                                <span class="input-group-text"><i class="zmdi zmdi-email"></i></span>
                            </div>
                        </div>
                        <div class="input-group mb-2">
                            <input type="text" class="form-control" placeholder="Enter Password" style="height: 45px" id="password">
                            <div class="input-group-append">
                                <span class="input-group-text"><i class="zmdi zmdi-lock"></i></span>
                            </div>
                        </div>
                         <div class="input-group mb-2">
                            <input type="text" class="form-control" placeholder="Enter Confirm Password" style="height: 45px" id="confirmpassword">
                            <div class="input-group-append">
                                <span class="input-group-text"><i class="zmdi zmdi-lock"></i></span>
                            </div>
                        </div>
                        <div class="input-group mb-2">
                            <input type="text" class="form-control" placeholder="Enter Position" style="height: 45px" id="position">
                            <div class="input-group-append">
                                <span class="input-group-text"><i class="zmdi zmdi-accounts-list"></i></span>
                            </div>
                        </div>
                        <div class="input-group mb-2">
                            <input type="text" class="form-control" placeholder="Enter Ref ID" style="height: 45px" id="ref_id">
                            <div class="input-group-append">
                                <span class="input-group-text"><i class="zmdi zmdi-account-box-mail"></i></span>
                            </div>
                        </div>                        
                        <!--<div class="checkbox">
                            <input id="remember_me" type="checkbox">
                            <label for="remember_me">I read and agree to the <a href="javascript:void(0);">terms of usage</a></label>
                        </div>-->
                        <button onclick="butSignUp()" class="btn btn-primary btn-block btn-lg waves-effect waves-light">SIGN UP</button>
                        <!--<div class="signin_with mt-3">
                            <a class="link" href="sign-in.html">You already have a membership?</a>
                        </div>-->
                    </div>
                </div>
                <div class="copyright text-center" style="color: white">
                    &copy;
                    <script>document.write(new Date().getFullYear())</script>,
                    <span><a href="" style="color: white"> Attendance System</a></span>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12"></div>
        </div>
    </div>
</div>


<!-- Jquery Core Js -->
<script src="dashboard/assets/bundles/libscripts.bundle.js"></script>
<script src="dashboard/assets/bundles/vendorscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js --> 

<script src="dashboard/assets/plugins/dropify/js/dropify.min.js"></script>
<script src="dashboard/assets/js/pages/forms/dropify.js"></script>
<script type="text/javascript">
    $('.dropify').dropify({
        messages: {
            default: 'Drag and drop profile picture here or simply click on it',
            replace: 'Drag and drop or click to replace',
            remove: 'click to remove',
            error: 'Ooops, an error occurs.'
        }
    });
</script>
<script type="text/javascript">
    function butSignUp(){
        // input name
        var name = document.getElementById("name").value;
        // input email
        var email = document.getElementById("email").value;
        // input password
        var password = document.getElementById("password").value;
        // input confirm password
        var confirmpassword = document.getElementById("confirmpassword").value;
        // input position
        var position = document.getElementById("position").value;
         // input ref ID
        var ref = document.getElementById("ref_id").value;
        // uploading of file
        var file = document.getElementById("file").files[0];
        // mine type of the file
        var mime_type = ["image/jpeg", "image/png"];
        // validate mime

        // checking if file exist to upload     
        if(typeof(file)=="undefined"){
            alert("Select an image to upload");
        }
        // invalid name
        else if(!/^[A-Za-z.,' ]+$/.test(name)){
            alert("Name should contain characters only");
        }
        // email validation
        else if(email.indexOf("@") < 1 || email.lastIndexOf(".") < email.indexOf("@") + 2 || email.lastIndexOf(".")+ 2 > email.length){
            alert("Invalid Email");
        }
        // password should contain only alphabet, number and space
        else if(!/^[A-Za-z0-9 ]+$/.test(password)){
            alert("Password cannot contain any special characters");
        }
        else if(password.length < 8){
            alert("Password should be atleast 8 in characters")
        }
        // confirm password should contain only alphabet, number and space
        else if(!/^[A-Za-z0-9 ]+$/.test(confirmpassword)){
            alert("Confirm password cannot contain any special characters");
        }
        // password should be equal to conform password before you can continue
        else if(password !== confirmpassword){
            alert("Pasword is not the same as confirm password");
        }
        else if(!/^[A-Za-z0-9.,' ]+$/.test(position)){
            alert("Position contain some illegal characters");
        }
        else if(mime_type.indexOf(file.type)==-1){
            alert("Error: Incorrect file type");
        }   
        //valiate file size of 5mb
        else if(file.size > 5 * 1024 * 1024){
            alert("File is too large to upload. File size should be below 5mb");
        }else{
            var data = new FormData();
            var ajax = new XMLHttpRequest();
            data.append("file", file);
            data.append("name", name);
            data.append("email", email);
            data.append("password", password);
            data.append("position", position);
            data.append("ref_id", ref);

            ajax.open("post", "lecturers_regAI.php", true);
            ajax.send(data);

            ajax.onreadystatechange = function() {
                if (ajax.readyState == 4 && ajax.status == 200) {
                    var result = ajax.responseText;
                    if(result){
                        alert("Registratration was successfull. You will be redirect in the next 5 seconds");
                        setTimeout(function(){window.location.href="index.php";},5000);
                    }else{
                        alert("Failed to register");
                    }
                }
            }
        }
    }
</script>
</body>
</html>