$(document).ready(function() {

	// variables for billing address
	var addressLine1Valid;
	var addressLine2Valid;
	var cityValid;
	var postcodeValid;
	var stateValid;
	var countyValid;
	var phoneNumberValid;
	var addressTypeValid;

	var billingValidationArr = [addressLine1Valid, addressLine2Valid, cityValid, postcodeValid, stateValid, countyValid, phoneNumberValid];

	//variables for shipping address (only when different)

	var isDifferent;

	var shippingLine1Valid;
	var shippingLine2Valid;
	var shippingCityValid;
	var shippingPostcodeValid;
	var shippingStateValid;
	var shippingCountyValid;
	var shippingPhoneNumberValid;
	var shippingAddressTypeValid;

	var shippingValidationArr = [shippingLine1Valid, shippingLine2Valid, shippingCityValid, shippingPostcodeValid, shippingStateValid, shippingCountyValid, shippingPhoneNumberValid];

	console.log("hello world")

	// beggining of validation block
	    if ($('#addressLine1').val().length > 0) {
       // console.log("hello");
        $ ('#addressLine1').css('border' , '2px solid green');
        !addressLine1Valid;
    }
        $( '#addressLine1' ).focus(function() {
        if ($('#addressLine1').val() == ''){
       // console.log('first name in focus and has nothing');
        $( this ).css( 'border' , '2px solid red');
        addressLine1Valid = false;
    }
    });

           $ ( '#addressLine1').keyup(function() {
        if($('#addressLine1').val().length <= 0 ){
            $ (this).css('border' , '2px solid red');
            //console.log('first name is empty');
            addressLine1Valid = false;
        } else if($('#addressLine1').val().length > 0) {
            
            $( this).css( 'border' ,'2px solid green');
           // console.log('first name has info');
      
            addressLine1Valid = true;
        }
    });
    // end of validation block
    	// beggining of validation block
	    if ($('#addressLine2').val().length > 0) {
       // console.log("hello");
        $ ('#addressLine2').css('border' , '2px solid green');
        !addressLine2Valid;
    }
        $( '#addressLine2' ).focus(function() {
        if ($('#addressLine2').val() == ''){
       // console.log('first name in focus and has nothing');
        $( this ).css( 'border' , '2px solid red');
        addressLine2Valid = false;
    }
    });

           $ ( '#addressLine2').keyup(function() {
        if($('#addressLine2').val().length <= 0 ){
            $ (this).css('border' , '2px solid red');
            //console.log('first name is empty');
            addressLine2Valid = false;
        } else if($('#addressLine2').val().length > 0) {
            
            $( this).css( 'border' ,'2px solid green');
           // console.log('first name has info');
      
            addressLine2Valid = true;
        }
    });
    // end of validation block
    	// beggining of validation block
	    if ($('#city').val().length > 0) {
       // console.log("hello");
        $ ('#city').css('border' , '2px solid green');
        !cityValid;
    }
        $( '#city' ).focus(function() {
        if ($('#city').val() == ''){
       // console.log('first name in focus and has nothing');
        $( this ).css( 'border' , '2px solid red');
        cityValid = false;
    }
    });

           $ ( '#city').keyup(function() {
        if($('#city').val().length <= 0 ){
            $ (this).css('border' , '2px solid red');
            //console.log('first name is empty');
            cityValid = false;
        } else if($('#city').val().length > 0) {
            
            $( this).css( 'border' ,'2px solid green');
           // console.log('first name has info');
      
            cityValid = true;
        }
    });
    // end of validation block
    	// beggining of validation block
	    if ($('#postcode').val().length > 0) {
       // console.log("hello");
        $ ('#postcode').css('border' , '2px solid green');
        !postcodeValid;
    }
        $( '#postcode' ).focus(function() {
        if ($('#postcode').val() == ''){
       // console.log('first name in focus and has nothing');
        $( this ).css( 'border' , '2px solid red');
        postcodeValid = false;
    }
    });

           $ ( '#postcode').keyup(function() {
        if($('#postcode').val().length <= 0 ){
            $ (this).css('border' , '2px solid red');
            //console.log('first name is empty');
            postcodeValid = false;
        } else if($('#postcode').val().length > 0) {
            
            $( this).css( 'border' ,'2px solid green');
           // console.log('first name has info');
      
            postcodeValid = true;
        }
    });
    // end of validation block
     // end of validation block
    	// beggining of validation block
	    if ($('#state').val().length > 0) {
       // console.log("hello");
        $ ('#state').css('border' , '2px solid green');
        !stateValid;
    }
        $( '#state' ).focus(function() {
        if ($('#state').val() == ''){
       // console.log('first name in focus and has nothing');
        $( this ).css( 'border' , '2px solid red');
        stateValid = false;
    }
    });

           $ ( '#state').keyup(function() {
        if($('#state').val().length <= 0 ){
            $ (this).css('border' , '2px solid red');
            //console.log('first name is empty');
            stateValid = false;
        } else if($('#state').val().length > 0) {
            
            $( this).css( 'border' ,'2px solid green');
           // console.log('first name has info');
      
            stateValid = true;
        }
    });
    // end of validation block
     // end of validation block
    	// beggining of validation block
	    if ($('#county').val().length > 0) {
       // console.log("hello");
        $ ('#county').css('border' , '2px solid green');
        !countyValid;
    }
        $( '#county' ).focus(function() {
        if ($('#county').val() == ''){
       // console.log('first name in focus and has nothing');
        $( this ).css( 'border' , '2px solid red');
        countyValid = false;
    }
    });

           $ ( '#county').keyup(function() {
        if($('#county').val().length <= 0 ){
            $ (this).css('border' , '2px solid red');
            //console.log('first name is empty');
            countyValid = false;
        } else if($('#county').val().length > 0) {
            
            $( this).css( 'border' ,'2px solid green');
           // console.log('first name has info');
      
            countyValid = true;
        }
    });
    // end of validation block
     // end of validation block
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
    });
    // end of validation block
     // end of validation block

});