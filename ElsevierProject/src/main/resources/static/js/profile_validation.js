$(document).ready(function() {
	var firstNameValid;
	var lastNameValid;
	var emailValid;
	var passwordValid;

	// beggining of validation block
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
      
            firstNameValid = true;
        }
    });
    // end of validation block
    	// beggining of validation block
	    if ($('#lastName').val().length > 0) {
       // console.log("hello");
        $ ('#lastName').css('border' , '2px solid green');
        !lastNameValid;
    }
        $( '#lastName' ).focus(function() {
        if ($('#lastName').val() == ''){
       // console.log('first name in focus and has nothing');
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
      
            lastNameValid = true;
        }
    });
    // end of validation block
    	// beggining of validation block
	    if ($('#email').val().length > 0) {
       // console.log("hello");
        $ ('#email').css('border' , '2px solid green');
        !emailValid;
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
            //console.log('first name is empty');
            emailValid = false;
        } else if($('#email').val().length > 0) {
            
            $( this).css( 'border' ,'2px solid green');
           // console.log('first name has info');
      
            emailValid = true;
        }
    });
    // end of validation block
    	// beggining of validation block
	    if ($('#password').val().length > 0) {
       // console.log("hello");
        $ ('#password').css('border' , '2px solid green');
        !passwordValid;
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
            //console.log('first name is empty');
            passwordValid = false;
        } else if($('#password').val().length > 0) {
            
            $( this).css( 'border' ,'2px solid green');
           // console.log('first name has info');
      
            passwordValid = true;
        }
    });
    // end of validation block

});