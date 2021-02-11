$(function() {
    console.log("heoo")
    $("td .btn-preparer").click(function(){
        console.log($(this))
        var card= $(this).parent().parent().parent().parent().parent().parent()
        if(card.parent().length==1){
            card.parent().parent().remove()
        }
         console.log(card.parent().length)

    })

});
