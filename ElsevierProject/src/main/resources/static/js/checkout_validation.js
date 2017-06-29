$(document).ready(function(){
$(document).on('keyup','input', function(){
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

           $( '#addressFirstName').keyup(function() {
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

           $( '#addressLastName').keyup(function() {
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
});

});