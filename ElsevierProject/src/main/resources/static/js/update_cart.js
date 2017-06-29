$(document).ready(function() {
	

	var selector;
	var oldVal = 1;
	var test = 500;

	var currentTotal = Number($('#cart_total_label').html().replace(/[^0-9\.]+/g,""));
	console.log(currentTotal);
	var cart = new Array();

	$(document).on('change keyup', 'input', function(e) {
		console.log(e.target.id);
		var priceID = e.target.id.replace("quantity","");
		cart[priceID] = price;
		
		//selector = e.target.id;

		//cast as number and ya got it! 
		var price = Number(document.getElementById(e.target.id).previousElementSibling.previousElementSibling.previousElementSibling.previousElementSibling.value);
		//console.log(price);
		var newVal = $(this).val();
		//console.log(newVal);
		
		if(newVal > oldVal) {
			console.log("+");
			var newPrice = price;
			//newPrice += price;
			//console.log(newPrice);
			 //document.getElementById(e.target.id).previousElementSibling.previousElementSibling.innerHTML = "$"+123;

			 //console.log("test:" +  document.getElementById(e.target.id).previousElementSibling.previousElementSibling.value);
			 //console.log(Number($('#cart_total_label').html().replace(/[^0-9\.]+/g,"")));
			//$('#cart_total_label').html(Number($('#cart_total_label').html().replace(/[^0-9\.]+/g,"")) + price);
			cart[priceID] = price * newVal;
			oldVal = newVal;
		} else {
			console.log("-");
		
			// document.getElementById(e.target.id).previousSibling.previousSibling.value -= price;
			//$('#cart_total_label').html(Number($('#cart_total_label').html().replace(/[^0-9\.]+/g,"")) - price);
			cart[priceID] = price * newVal;
			oldVal = newVal;
		}

	
		for(var i = 0; i < cart.length; i++) {
			currentTotal += cart[i];
			
		}
$('#cart_total_label').html(currentTotal);
console.log("current total: " + currentTotal);
		//console.log(test);

	});



	
});

/**
function calculateTotalPrice(price,quantity,price_label)
{
	     
	       console.log("this is working")
	       var cartTotal = document.getElementById("cart_total").value;
	       var orderTotal = document.getElementById("order_total").value;
	       
	       var totalPrice = parseFloat(price) * parseFloat(quantity);
	       
	       price_label.innerHTML = "$"+totalPrice;
	       
	       cTotal  = parseFloat(cartTotal) + parseFloat(price);
	       
	       oTotal = parseFloat(orderTotal) + parseFloat(price);
	       
	       document.getElementById("cart_total_label").innerHTML = "$"+cTotal;
	       
	       document.getElementById("order_total_label").innerHTML = "$"+oTotal;
	       
	       document.getElementById("price").value = totalPrice;
	       
	       
	       document.getElementById("cart_total").value = cTotal;
	       document.getElementById("order_total").value = oTotal;
	       
	       
	       //alert("Cart Total is "+cartTotal);
	       //alert("Order Total is "+orderTotal);
//	        var xmlhttp = new XMLHttpRequest();
//	        xmlhttp.onreadystatechange = function() {
//	            if (this.readyState == 4 && this.status == 200) {
//	                price_label.innerHTML = "$"+this.responseText;
//	                document.getElementById("cart_total_label").innerHTML = cartTotal+parseFloat(this.responseText);
//	               // document.getElementById("order_total_label").innerHTML = (parseFloat(orderTotal)+parseFloat(this.responseText));
//	            	
//	                //theField.form.price_label.innerHTML = "$"+this.responseText;
//	            }
//	        };
//	        xmlhttp.open("GET", "/updatePrice?price=" + price+"&quantity="+quantity, true);
//	        xmlhttp.send();
	    
}
**/	