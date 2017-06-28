$(document).ready(function() {

    var firstNameValid;
    var lastNameValid;
    var emailValid;
    var passwordValid;
    var passwordConfirmValid;
    var validated = false;
    var validationArr = [firstNameValid, lastNameValid,emailValid,passwordValid, passwordConfirmValid];


    function isValidated(element, index, array) {
        return element == true;
    }



    $("#btnRegister").prop('disabled', true);

    $('.user-event').keyup(function() {
    	console.log(validationArr.every(isValidated));
    	console.log("first name: " + firstNameValid);
    	console.log("last name: " + lastNameValid);
    	console.log("email: " + emailValid);
    	console.log("password: " + passwordValid);
    	if(firstNameValid == true && lastNameValid == true && passwordValid == true && emailValid == true && passwordConfirmValid == true){
    		console.log("all valid");
    		$("#btnRegister").prop('disabled', false);
    	} else {
    		$("#btnRegister").prop('disabled', true);
    	}
    });

    if ($('#firstName').val().length > 0) {
       // console.log("hello");
        $ ('#firstName').css('border' , '2px solid green');
        !firstNameValid;
    }
        $( '#firstName' ).focus(function() {
        if ($('#firstName').val() == ''){
       // console.log('first name in focus and has nothing');
        $( this ).css( 'border' , '2px solid red');
        firstNameValid = false;
    }
    });
    $ ( '#firstName').keyup(function() {
        if($('#firstName').val().length <= 0 ){
            $ (this).css('border' , '2px solid red');
            //console.log('first name is empty');
            firstNameValid = false;
        } else if($('#firstName').val().length > 0) {
            
            $( this).css( 'border' ,'2px solid green');
           // console.log('first name has info');
           console.log("first name valid: " + validationArr.every(isValidated));
            firstNameValid = true;
        }
    });
    // End of validation for First Name input

    //validation for Last Name Form Input
        if ($('#lastName').val().length > 0) {
       // console.log("hello");
        $ ('#lastName').css('border' , '2px solid green');
        lastNameValid = true;
    }
        $( '#lastName' ).focus(function() {
        if ($('#lastName').val() == ''){
      //  console.log('first name in focus and has nothing');
        $( this ).css( 'border' , '2px solid red');
        lastNameValid = false;
    }
    });
    $ ( '#lastName').keyup(function() {
        if($('#lastName').val().length <= 0 ){
            $ (this).css('border' , '2px solid red');
            //console.log('first name is empty');
            lastNameValid = false;
        } else if($('#lastName').val().length > 0) {
            
            $( this).css( 'border' ,'2px solid green');
           // console.log('first name has info');
           console.log("last name valid: " + validationArr.every(isValidated));
            lastNameValid = true;
        }
    });
    // checking email validation
        //validation for Last Name Form Input
        if ($('#email').val().length > 0) {
       // console.log("hello");
        $ ('#email').css('border' , '2px solid green');
        emailValid = true;
    }
        $( '#email' ).focus(function() {
        if ($('#email').val() == ''){
       // console.log('first name in focus and has nothing');
        $( this ).css( 'border' , '2px solid red');
        emailValid = false;
    }
    });
    $ ( '#email').keyup(function() {
        if($('#email').val().length <= 0 ){
            $ (this).css('border' , '2px solid red');
           // console.log('first name is empty');
            emailValid = false;
        } else if($('#lastName').val().length > 0) {
            
            $( this).css( 'border' ,'2px solid green');
          //  console.log('first name has info');
          console.log("email valid: " + validationArr.every(isValidated));
            emailValid = true;
        }

    });
// checking validation for password
        if ($('#password').val().length > 0) {
       // console.log("hello");
        $ ('#password').css('border' , '2px solid green');
        passwordValid = true;
    }
        $( '#password' ).focus(function() {
        if ($('#password').val() == ''){
       // console.log('first name in focus and has nothing');
        $( this ).css( 'border' , '2px solid red');
        passwordValid = false;
    }
    });
    $ ( '#password').keyup(function() {
        if($('#password').val().length <= 0 ){
            $ (this).css('border' , '2px solid red');
           // console.log('first name is empty');
            passwordValid = false;
        } else if($('#password').val().length > 0) {
            
            $( this).css( 'border' ,'2px solid green');
          //  console.log('first name has info');
          console.log("password valid: " + validationArr.every(isValidated));
            passwordValid = true;
        }
    });
// end of password validation
    // checking validation for password

    $('#passwordConfirm').keyup(function () {
    if($('#password').val() != $('#passwordConfirm').val()){
        $('#passwordConfirm').css('border' , '2px solid red');
        passwordConfirmValid = false;

    } else {
        $('#passwordConfirm').css('border' , '2px solid green');
        console.log("confirm password valid: " + validationArr.every(isValidated));
         passwordConfirmValid = true;
    }

});

});

