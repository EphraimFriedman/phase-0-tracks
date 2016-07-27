console.log("testing...")

// $("td").hide();

$(document).ready(function() {
    $("#column1_header").hover(function() {
        $(".column1").slideToggle();
    });
});

$(document).ready(function() {
    $("#column2_header").hover(function() {
        $(".column2").slideToggle();
    });
});

$(document).ready(function() {
    $("#column3_header").hover(function() {
        $(".column3").slideToggle();
    });
});

$(document).ready(function() {
	$("button").dblclick(function() {
		alert("Your form has been submitted")
	});
});
