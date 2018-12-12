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

    $("#media-uploadBtn").mousedown(function(){
        $('#media-uploadBtn').css('-webkit-box-shadow', 'inset 2px 2px 2px 0px rgba(0,0,0,0.6)');
        $('#media-uploadBtn').css('-moz-box-shadow', 'inset 2px 2px 2px 0px rgba(0,0,0,0.6)');
        $('#media-uploadBtn').css('box-shadow', 'inset 2px 2px 2px 0px rgba(0,0,0,0.6)');
    });

    $("#media-uploadBtn").mouseup(function(){
        $('#media-uploadBtn').css('-webkit-box-shadow', '2px 2px 2px 0px rgba(0,0,0,0.6);');
        $('#media-uploadBtn').css('-moz-box-shadow', '2px 2px 2px 0px rgba(0,0,0,0.6);');
        $('#media-uploadBtn').css('box-shadow', '2px 2px 2px 0px rgba(0,0,0,0.6);');
    });
});

function delFromMediathek(val){
    $.ajax({
        url: 'functions.php',
        type: 'POST',
        data: {
            'DelID': val
        },

        success: function()
        { 
            console.log('deleted successfull');
        },

        error: function()
        {
            console.log('error');
        }
    });
}