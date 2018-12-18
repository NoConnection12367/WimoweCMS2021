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

/* Klick-event zum Löschen von Medien aus der Mediathek */
    $(".media-delBtn").click(function(){
        delFromMediathek($(this).attr('value'));
    });

/* Verhindert Neuladen, der Mediathek beim Upload */
    $("#form-media-upload").submit(function(e){
        return false;
    });

/* Sendet beim Upload-event das file an das php-script */
    $('#media-uploadBtn').on('click', function() {
        var file_data = $('#media-searchBtn').prop('files')[0];   
        var form_data = new FormData();                  
        form_data.append('file', file_data);

        $.ajax({
            url: 'functions.php',
            dataType: 'text',
            cache: false,
            contentType: false,
            processData: false,
            data: form_data,
            type: 'post',

            success: function(){
                location.reload();
            }
        });
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
            location.reload();  
        },

        error: function()
        {
            console.log('error');
        }
    });
}