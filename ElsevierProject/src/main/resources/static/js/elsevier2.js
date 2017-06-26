$(".ba").click(function () {
	var button = document.getElementById("shippingButton");
    if ($(".ba").is(":checked")) {
        $(".tex")
            .removeAttr("disabled")
            .css("background-color", "white");
        button.disabled = false;
    }
    else {
        $(".tex")
            .attr("disabled", "disabled")
            .css("background-color", "red");
        button.disabled = true;
    }
});