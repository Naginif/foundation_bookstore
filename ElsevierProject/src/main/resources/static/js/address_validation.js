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

	var billingValidationArr = [addressLine1Valid, addressLine2Valid, cityValid, postcodeValid, stateValid, countyValid, phoneNumberValid, addressTypeValid ];

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

	var shippingValidationArr = [shippingLine1Valid, shippingLine2Valid, shippingCityValid, shippingPostcodeValid, shippingStateValid, shippingCountyValid, shippingPhoneNumberValid, shippingAddressTypeValid];

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
});