$(document).ready(function() {
$("#checkout_form").submit(function() {

var firstname = $("#firstName").val();
var lastname = $("#lastName").val();
var address1 = $("#addressLine1").val();
var address2 = $("#addressLine2").val();
var city = $("#city").val();

var postcode = $("#postcode").val();
var state = $("#state").val();
var country = $("#country").val();


var email = $("#email").val();




if (firstname === '' && lastname === '' && address1 === '' &&
        
		address2 === '' && city === '' && postcode === '' &&      
            
		state === '' && country === '' && email === '' 
    ) {
	//$( ".columns" ).css("border", "3px solid red" );
	$('#firstName').css('border', '3px solid red');
	$('#lastName').css('border', '3px solid red');
	$('#addressLine1').css('border', '3px solid red');
	$('#addressLine2').css('border', '3px solid red');
	$('#city').css('border', '3px solid red');
	$('#postcode').css('border', '3px solid red');
	$('#state').css('border', '3px solid red');
	$('#country').css('border', '3px solid red');
	$('#email').css('border', '3px solid red');
	
	
return false; // Indicates that don't submit the form, stay on same page
} else {
	



if ($('#firstname').val() == '') {
    $('#firstname').css('border', '3px solid red');
    
    return false;
}
else {
    $('#firstname').css('border-color', '');
    //return true;
}


if ($('#lastname').val() == '') {
    $('#lastname').css('border', '3px solid red');
    return false;
}
else {
    $('#lastname').css('border-color', '');
    //return true;
}



if ($('#address1').val() == '') {
    $('#address1').css('border', '3px solid red');
    return false;
}
else {
    $('#address1').css('border-color', '');
    //return true;
}



if ($('#address2').val() == '') {
    $('#address2').css('border', '3px solid red');
    return false;
}
else {
    $('#address2').css('border-color', '');
    //return true;
}



if ($('#city').val() == '') {
    $('#city').css('border', '3px solid red');
    return false;
}
else {
    $('#city').css('border-color', '');
    //return true;
}



if ($('#postcode').val() == '') {
    $('#postcode').css('border', '3px solid red');
    return false;
}
else {
    $('#postcode').css('border-color', '');
    //return true;
}



if ($('#state').val() == '') {
    $('#state').css('border', '3px solid red');
    return false;
}
else {
    $('#state').css('border-color', '');
    //return true;
}


if ($('#country').val() == '') {
    $('#country').css('border', '3px solid red');
    return false;
}
else {
    $('#country').css('border-color', '');
    //return true;
}


if ($('#email').val() == '') {
    $('#email').css('border', '3px solid red');
    return false;
}
else {
    $('#email').css('border-color', '');
    //return true;
}

}

});

    if ($('#firstName').val().length > 0) {
        console.log("hello");
        $ ('#firstName').css('border' , '2px solid green');
    }
        $( '#firstName' ).focus(function() {
        if ($('#firstName').val() == ''){
        console.log('first name in focus and has nothing');
        $( this ).css( 'border' , '2px solid red');
    }
    });
    $ ( '#firstName').keyup(function() {
        if($('#firstName').val().length <= 0 ){
            $ (this).css('border' , '2px solid red');
            console.log('first name is empty');
        } else if($('#firstName').val().length > 0) {
            
            $( this).css( 'border' ,'2px solid green');
            console.log('first name has info');
        }
    });
    // End of validation for First Name input

    //validation for Last Name Form Input
        if ($('#lastName').val().length > 0) {
        console.log("hello");
        $ ('#lastName').css('border' , '2px solid green');
    }
        $( '#lastName' ).focus(function() {
        if ($('#lastName').val() == ''){
        console.log('first name in focus and has nothing');
        $( this ).css( 'border' , '2px solid red');
    }
    });
    $ ( '#lastName').keyup(function() {
        if($('#lastName').val().length <= 0 ){
            $ (this).css('border' , '2px solid red');
            console.log('first name is empty');
        } else if($('#lastName').val().length > 0) {
            
            $( this).css( 'border' ,'2px solid green');
            console.log('first name has info');
        }
    });
    // checking email validation
        //validation for Last Name Form Input
        if ($('#email').val().length > 0) {
        console.log("hello");
        $ ('#email').css('border' , '2px solid green');
    }
        $( '#email' ).focus(function() {
        if ($('#email').val() == ''){
        console.log('first name in focus and has nothing');
        $( this ).css( 'border' , '2px solid red');
    }
    });
    $ ( '#email').keyup(function() {
        if($('#email').val().length <= 0 ){
            $ (this).css('border' , '2px solid red');
            console.log('first name is empty');
        } else if($('#lastName').val().length > 0) {
            
            $( this).css( 'border' ,'2px solid green');
            console.log('first name has info');
        }
    });
// checking validation for password
        if ($('#password').val().length > 0) {
        console.log("hello");
        $ ('#password').css('border' , '2px solid green');
    }
        $( '#password' ).focus(function() {
        if ($('#password').val() == ''){
        console.log('first name in focus and has nothing');
        $( this ).css( 'border' , '2px solid red');
    }
    });
    $ ( '#password').keyup(function() {
        if($('#password').val().length <= 0 ){
            $ (this).css('border' , '2px solid red');
            console.log('first name is empty');
        } else if($('#password').val().length > 0) {
            
            $( this).css( 'border' ,'2px solid green');
            console.log('first name has info');
        }
    });
// end of password validation
    // checking validation for password

    $('#passwordConfirm').keyup(function () {
    if($('#password').val() != $('#passwordConfirm').val()){
        $('#passwordConfirm').css('border' , '2px solid red');
    } else {
        $('#passwordConfirm').css('border' , '2px solid green');
    }

});



});

