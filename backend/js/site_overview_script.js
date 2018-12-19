$(document).ready(function(){
    $('.sortable').nestedSortable({
        handle: 'div',
        items: 'li',
        toleranceElement: '> div',
        maxLevels: 2
    });

    $("#savebutton").click(function() {
        var RAW = $('.sortable').nestedSortable('toArray')
        var NavIDtmp = 0;
        var Navend = 0;
        var NavID = "";
        var updateArrID = [];
        var updateArrNavIndex = [];
        $.each( RAW, function( key, value ) {
            if(value.id != null){
                if(value.parent_id == null){
                    NavIDtmp++;
                    NavID = NavIDtmp.toString();
                    Navend = 0;
                }
                else {
                    Navend++;
                    NavID = NavIDtmp.toString() + "." + Navend.toString();
                }
                console.log("ID= " + value.id + " NavIndex= " + NavID)              
                updateArrID.push(value.id);
                updateArrNavIndex.push(NavID);
            }
          });
          $.post("functions.php",
          {
              IDArr: updateArrID,
              NavIndexArr: updateArrNavIndex
          },
          function (status) {
              alert("Status: " + status);
          });
      });   
});