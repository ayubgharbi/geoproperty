$(function(){
    $("#toggleDetails").on("click", function(){
        var details = $("#prop-details");

        console.log("clicked");
        details.toggleClass("open");
        if(details.hasClass("open")){
            $(this).text("Show less");
        } else {
            $(this.text("Show more"));
        }
    });
});