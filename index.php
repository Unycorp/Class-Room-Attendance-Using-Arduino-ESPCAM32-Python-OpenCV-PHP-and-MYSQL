<!DOCTYPE html>
<html lang="en">
<head>
	<title>Lecturer Login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>

<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login/fonts/iconic/css/material-design-iconic-font.min.css">

	<link rel="stylesheet" type="text/css" href="login/css/util.css">
	<link rel="stylesheet" type="text/css" href="login/css/main.css">
	<link rel="stylesheet" href="notification/jquery-toast-plugin/dist/jquery.toast.min.css">
	<!-- Color of the notification -->
	<link rel="stylesheet" href="notification/notification.css">

	<style>
   @font-face{
      src: url(dashboard/assets/css/ITCEDSCR.ttf);
      font-family: ITCEDSCR;
    } 
  </style>
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100" style="padding: 30px 20px 25px 20px;">
				<div class="login100-form validate-form">
          <span class="login100-form-title p-b-4">
            <!--<i class="zmdi zmdi-font"></i>-->
            <img src="images/icons/logo2.png" style="width: 50px; height: 50px">
          </span>
					<span class="login100-form-title p-b-10" style="color: black">
						<b style="font-family: ITCEDSCR; font-size: 62px">C</b> lass Attendance System
					</span>
					<div style="color: #777; text-align: center; font-size: 14px; padding-bottom: 20px">Sign in as a lecturer to start a great day!!</div>

					<div class="wrap-input100 validate-input" data-validate = "Valid email is: a@b.c">
						<input class="input100" type="text" name="email">
						<span class="focus-input100" data-placeholder="Email"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<span class="btn-show-pass">
							<i class="zmdi zmdi-eye"></i>
						</span>
						<input class="input100" type="password" name="pass">
						<span class="focus-input100" data-placeholder="Password"></span>
					</div>

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn" onclick="signIn()">
								Login
							</button>
						</div>
					</div>

					<div class="text-center p-t-115">
						<span class="txt1">
							Don’t have an account?
						</span>

						<a class="txt2" href="lecturers_reg.php">
							Register as a lecturer
						</a>
            <br>Or
            <a class="txt2" href="students_reg.php">
              Register as a student
            </a>
					</div>

				</div>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="login/vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="notification/jquery-toast-plugin/dist/jquery.toast.min.js"></script>

<script type="text/javascript">
function signIn(){

var email = document.getElementsByName("email")[0].value;
var password = document.getElementsByName("pass")[0].value;


var data = new FormData();
var ajax = new XMLHttpRequest();

data.append("email", email);
data.append("password", password);
ajax.open("post", "signInAI.php", true);
ajax.send(data);

ajax.onreadystatechange = function() {
      if (ajax.readyState == 4 && ajax.status == 200) {
      var result = ajax.responseText;
      if(result){
      	window.location.href = "dashboard/";
      }else{
      	speakError("Wrong email or password. Please check your spellings and correct. Remember email or password is case-sensitive");
      }
    }
  }
     
}


(function ($) {
    "use strict";


    /*==================================================================
    [ Focus input ]*/
    $('.input100').each(function(){
        $(this).on('blur', function(){
            if($(this).val().trim() != "") {
                $(this).addClass('has-val');
            }
            else {
                $(this).removeClass('has-val');
            }
        })    
    })
  
  
    /*==================================================================
    [ Validate ]*/
    var input = $('.validate-input .input100');

    $('.validate-form').on('submit',function(e){
    	e.preventDefault();
        var check = true;

        for(var i=0; i<input.length; i++) {
            if(validate(input[i]) == false){
                showValidate(input[i]);
                check=false;
            }
        }

        return check;
    });


    $('.validate-form .input100').each(function(){
        $(this).focus(function(){
           hideValidate(this);
        });
    });

    function validate (input) {
        if($(input).attr('type') == 'email' || $(input).attr('name') == 'email') {
            if($(input).val().trim().match(/^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{1,5}|[0-9]{1,3})(\]?)$/) == null) {
                return false;
            }
        }
        else {
            if($(input).val().trim() == ''){
                return false;
            }
        }
    }

    function showValidate(input) {
        var thisAlert = $(input).parent();

        $(thisAlert).addClass('alert-validate');
    }

    function hideValidate(input) {
        var thisAlert = $(input).parent();

        $(thisAlert).removeClass('alert-validate');
    }
    
    /*==================================================================
    [ Show pass ]*/
    var showPass = 0;
    $('.btn-show-pass').on('click', function(){
        if(showPass == 0) {
            $(this).next('input').attr('type','text');
            $(this).find('i').removeClass('zmdi-eye');
            $(this).find('i').addClass('zmdi-eye-off');
            showPass = 1;
        }
        else {
            $(this).next('input').attr('type','password');
            $(this).find('i').addClass('zmdi-eye');
            $(this).find('i').removeClass('zmdi-eye-off');
            showPass = 0;
        }
        
    });


})(jQuery);


function speakSuccess(message){

    $.toast({
      heading: 'successful',
      text: message,
      showHideTransition: 'slide',
      icon: 'success',
      loaderBg: '#f96868',
      position: {
        right: 70,
        top: 10
      }
    });
}

function speakError(message){

    $.toast({
      heading: 'error!',
      text: message,
      showHideTransition: 'slide',
      icon: 'error',
      loaderBg: '#f96868',
      position: {
        right: 70,
        top: 10
      }
    });
}


function speakInfo(message){

    $.toast({
      heading: 'processing',
      text: message,
      showHideTransition: 'slide',
      icon: 'info',
      loaderBg: '#f96868',
      position: {
        right: 70,
        top: 10
      }
    });
}

	</script>

</body>
</html>