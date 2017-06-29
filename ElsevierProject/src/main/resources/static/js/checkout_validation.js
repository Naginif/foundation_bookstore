$(document).ready(function(){
    	// beggining of validation block
	    if ($('#phoneNumber').val().length > 0) {
       // console.log("hello");
        $ ('#phoneNumber').css('border' , '2px solid green');
        !phoneNumberValid;
    }
        $( '#phoneNumber' ).focus(function() {
        if ($('#phoneNumber').val() == ''){
       // console.log('first name in focus and has nothing');
        $( this ).css( 'border' , '2px solid red');
        phoneNumberValid = false;
    }
    });

           $ ( '#phoneNumber').keyup(function() {
        if($('#phoneNumber').val().length <= 0 ){
            $ (this).css('border' , '2px solid red');
            //console.log('first name is empty');
            phoneNumberValid = false;
        } else if($('#phoneNumber').val().length > 0) {
            
            $( this).css( 'border' ,'2px solid green');
           // console.log('first name has info');
      
            phoneNumberValid = true;
        }
         if( $('#chkIsSame').is(':checked')) {
            $('#shippingPhoneNumber').val($('#phoneNumber').val());
        }

    });
    // end of validation block
        	// beggining of validation block
	    if ($('#addressFirstName').val().length > 0) {
       // console.log("hello");
        $ ('#addressFirstName').css('border' , '2px solid green');
        !phoneNumberValid;
    }
        $( '#addressFirstName' ).focus(function() {
        if ($('#addressFirstName').val() == ''){
       // console.log('first name in focus and has nothing');
        $( this ).css( 'border' , '2px solid red');
        phoneNumberValid = false;
    }
    });

           $ ( '#addressFirstName').keyup(function() {
        if($('#addressFirstName').val().length <= 0 ){
            $ (this).css('border' , '2px solid red');
            //console.log('first name is empty');
            phoneNumberValid = false;
        } else if($('#addressFirstName').val().length > 0) {
            
            $( this).css( 'border' ,'2px solid green');
           // console.log('first name has info');
      
            phoneNumberValid = true;
        }
         if( $('#chkIsSame').is(':checked')) {
            $('#shippingPhoneNumber').val($('#phoneNumber').val());
        }

    });
    // end of validation block
       	// beggining of validation block
	    if ($('#addressLastName').val().length > 0) {
       // console.log("hello");
        $ ('#addressLastName').css('border' , '2px solid green');
        !phoneNumberValid;
    }
        $( '#addressLastName' ).focus(function() {
        if ($('#addressLastName').val() == ''){
       // console.log('first name in focus and has nothing');
        $( this ).css( 'border' , '2px solid red');
        phoneNumberValid = false;
    }
    });

           $ ( '#addressLastName').keyup(function() {
        if($('#addressLastName').val().length <= 0 ){
            $ (this).css('border' , '2px solid red');
            //console.log('first name is empty');
            phoneNumberValid = false;
        } else if($('#addressLastName').val().length > 0) {
            
            $( this).css( 'border' ,'2px solid green');
           // console.log('first name has info');
      
            phoneNumberValid = true;
        }
         if( $('#chkIsSame').is(':checked')) {
            $('#shippingPhoneNumber').val($('#phoneNumber').val());
        }

    });
    // end of validation block
       	// beggining of validation block
	    if ($('#addressLine1').val().length > 0) {
       // console.log("hello");
        $ ('#addressLine1').css('border' , '2px solid green');
        !phoneNumberValid;
    }
        $( '#addressLine1' ).focus(function() {
        if ($('#addressLine1').val() == ''){
       // console.log('first name in focus and has nothing');
        $( this ).css( 'border' , '2px solid red');
        phoneNumberValid = false;
    }
    });

           $ ( '#addressLine1').keyup(function() {
        if($('#addressLine1').val().length <= 0 ){
            $ (this).css('border' , '2px solid red');
            //console.log('first name is empty');
            phoneNumberValid = false;
        } else if($('#addressLine1').val().length > 0) {
            
            $( this).css( 'border' ,'2px solid green');
           // console.log('first name has info');
      
            phoneNumberValid = true;
        }
         if( $('#chkIsSame').is(':checked')) {
            $('#shippingPhoneNumber').val($('#phoneNumber').val());
        }

    });
    // end of validation block
       	// beggining of validation block
	    if ($('#addressLine2').val().length > 0) {
       // console.log("hello");
        $ ('#addressLine2').css('border' , '2px solid green');
        !phoneNumberValid;
    }
        $( '#addressLine2' ).focus(function() {
        if ($('#addressLine2').val() == ''){
       // console.log('first name in focus and has nothing');
        $( this ).css( 'border' , '2px solid red');
        phoneNumberValid = false;
    }
    });

           $ ( '#addressLine2').keyup(function() {
        if($('#addressLine2').val().length <= 0 ){
            $ (this).css('border' , '2px solid red');
            //console.log('first name is empty');
            phoneNumberValid = false;
        } else if($('#addressLine2').val().length > 0) {
            
            $( this).css( 'border' ,'2px solid green');
           // console.log('first name has info');
      
            phoneNumberValid = true;
        }
         if( $('#chkIsSame').is(':checked')) {
            $('#shippingPhoneNumber').val($('#phoneNumber').val());
        }

    });
    // end of validation block
       	// beggining of validation block
	    if ($('#postcode').val().length > 0) {
       // console.log("hello");
        $ ('#postcode').css('border' , '2px solid green');
        !phoneNumberValid;
    }
        $( '#postcode' ).focus(function() {
        if ($('#postcode').val() == ''){
       // console.log('first name in focus and has nothing');
        $( this ).css( 'border' , '2px solid red');
        phoneNumberValid = false;
    }
    });

           $ ( '#postcode').keyup(function() {
        if($('#postcode').val().length <= 0 ){
            $ (this).css('border' , '2px solid red');
            //console.log('first name is empty');
            phoneNumberValid = false;
        } else if($('#postcode').val().length > 0) {
            
            $( this).css( 'border' ,'2px solid green');
           // console.log('first name has info');
      
            phoneNumberValid = true;
        }
         if( $('#chkIsSame').is(':checked')) {
            $('#shippingPhoneNumber').val($('#phoneNumber').val());
        }

    });
    // end of validation block
       	// beggining of validation block
	    if ($('#state').val().length > 0) {
       // console.log("hello");
        $ ('#state').css('border' , '2px solid green');
        !phoneNumberValid;
    }
        $( '#state' ).focus(function() {
        if ($('#state').val() == ''){
       // console.log('first name in focus and has nothing');
        $( this ).css( 'border' , '2px solid red');
        phoneNumberValid = false;
    }
    });

           $ ( '#state').keyup(function() {
        if($('#state').val().length <= 0 ){
            $ (this).css('border' , '2px solid red');
            //console.log('first name is empty');
            phoneNumberValid = false;
        } else if($('#state').val().length > 0) {
            
            $( this).css( 'border' ,'2px solid green');
           // console.log('first name has info');
      
            phoneNumberValid = true;
        }
         if( $('#chkIsSame').is(':checked')) {
            $('#shippingPhoneNumber').val($('#phoneNumber').val());
        }

    });
    // end of validation block
       	// beggining of validation block
	    if ($('#country').val().length > 0) {
       // console.log("hello");
        $ ('#country').css('border' , '2px solid green');
        !phoneNumberValid;
    }
        $( '#country' ).focus(function() {
        if ($('#country').val() == ''){
       // console.log('first name in focus and has nothing');
        $( this ).css( 'border' , '2px solid red');
        phoneNumberValid = false;
    }
    });

           $ ( '#country').keyup(function() {
        if($('#country').val().length <= 0 ){
            $ (this).css('border' , '2px solid red');
            //console.log('first name is empty');
            phoneNumberValid = false;
        } else if($('#country').val().length > 0) {
            
            $( this).css( 'border' ,'2px solid green');
           // console.log('first name has info');
      
            phoneNumberValid = true;
        }
         if( $('#chkIsSame').is(':checked')) {
            $('#shippingPhoneNumber').val($('#phoneNumber').val());
        }

    });
    // end of validation block
       	// beggining of validation block
	    if ($('#email').val().length > 0) {
       // console.log("hello");
        $ ('#email').css('border' , '2px solid green');
        !phoneNumberValid;
    }
        $( '#email' ).focus(function() {
        if ($('#email').val() == ''){
       // console.log('first name in focus and has nothing');
        $( this ).css( 'border' , '2px solid red');
        phoneNumberValid = false;
    }
    });

           $ ( '#email').keyup(function() {
        if($('#email').val().length <= 0 ){
            $ (this).css('border' , '2px solid red');
            //console.log('first name is empty');
            phoneNumberValid = false;
        } else if($('#email').val().length > 0) {
            
            $( this).css( 'border' ,'2px solid green');
           // console.log('first name has info');
      
            phoneNumberValid = true;
        }
         if( $('#chkIsSame').is(':checked')) {
            $('#shippingPhoneNumber').val($('#phoneNumber').val());
        }

    });
    // end of validation block
});