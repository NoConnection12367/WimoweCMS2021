$(document).ready(function(){

/* Einblenden der Navigation */
    $('#toggle-right').click(function(){
        $('#toggle-right').css('display','none');
        $('#toggle-left').css('display','inline-block');

        $('#navigation').css('width','280px');
        $('#navigation').css('padding','15px');
        $('#navigation').css('border','1px solid #222');
        $('#navigation').css('border-right','3px solid #333');
        $('#navigation li').css('display', 'block');
    });

/* Ausblenden der Navigation */
    $('#toggle-left').click(function(){
        $('#toggle-left').css('display','none');
        $('#toggle-right').css('display','block');

        $('#navigation').css('width','0px');
        $('#navigation').css('padding','0px');
        $('#navigation').css('border','none');
        $('#navigation li').css('display', 'none');
    });

    $(".media-delBtn").click(function(){
        delFromMediathek($(this).attr('value'));
    });
});


function delFromMediathek(val){
    $.ajax({
        url: "functions.php",
        method: "POST",
        data: {DelID: val},

        success: function(){deleteSucc();}
    });
}
  
function deleteSucc(){
    // do something
    console.log('deleted successfull');
}