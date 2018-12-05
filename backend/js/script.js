$(document).ready(function(){
    /* button shaddow-effekt user-icon
    $('.user-icon').mousedown(function(){
		$('.user-icon').addClass('insetShaddow');
    });
    
    $('.user-icon').mouseup(function(){
        $('.user-icon').removeClass('insetShaddow');
    });
    
    $('.user-icon').mouseout(function(){
        $('.user-icon').removeClass('insetShaddow');
    });
*/
/* Einblenden der Navigation */
$('#toggle-right').click(function(e){
    $('#toggle-right').css('display','none');
    $('#toggle-left').css('display','inline-block');

    $('#navigation').css('width','280px');
    $('#navigation').css('padding','15px');
    $('#navigation').css('border','1px solid #222');
    $('#navigation').css('border-right','3px solid #333');
    $('#navigation li').css('display', 'block');

    e.preventDefault();
});

/* Ausblenden der Navigation */
$('#toggle-left').click(function(e){
    $('#toggle-left').css('display','none');
    $('#toggle-right').css('display','block');

    $('#navigation').css('width','0px');
    $('#navigation').css('padding','0px');
    $('#navigation').css('border','none');
    $('#navigation li').css('display', 'none');


    e.preventDefault();
});



    
});