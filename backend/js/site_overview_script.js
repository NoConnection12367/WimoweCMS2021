$(document).ready(function(){
    $('.sortable').nestedSortable({
        handle: 'div',
        items: 'li',
        toleranceElement: '> div',
        maxLevels: 3
    });

    $("#savebutton").click(function() {
        console.log($('.sortable').nestedSortable('serialize'));
      });

    
});