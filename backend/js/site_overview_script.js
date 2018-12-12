$(document).ready(function(){
    $('.sortable').nestedSortable({
        handle: 'div',
        items: 'li',
        toleranceElement: '> div',
        maxLevels: 2
    });

    $("#savebutton").click(function() {
        console.log($('.sortable').nestedSortable('serialize'));
      });

    
});