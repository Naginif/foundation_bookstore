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

	
}