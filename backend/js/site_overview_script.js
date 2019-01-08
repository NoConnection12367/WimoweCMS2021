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

    //Initialize dialog new Site
    $("#dialog_new").dialog({
        autoOpen: false,
    });

    $("#createbutton").click(function() {
    $("#dialog_new").dialog("open");
    });

    $('.newsitesaver').on('click', function () {
        var isvisible_new = 0
        if ($('.isvisible_new').prop('checked') == true) isvisible_new = 1;
        $.post("functions.php",
        {
            SiteName_new: $('.sitename_new').val(),
            templateid_new: $('.templateid_new').val(),
            isvisible_new: isvisible_new
        },
        function (status) {
            alert("Status: " + status);
            location.reload();
        });
        $("#dialog_new").dialog('close');
    });

    //Initialize dialog Edit Site
    $("#dialog_edit").dialog({
        autoOpen: false,
    });

    $(".editsite").click(function() {
        var name = $(this).parent().children("a").text();
        var siteattr = $(this).parent().parent().attr('class').split(" ");
        var visible = true;
        if (siteattr[0].split("_").pop() == 0) visible = false;
        var templateid = siteattr[1].split("_").pop();
        $("#dialog_edit .sitename").val(name);
        $("#dialog_edit .templateid").val(templateid);
        $("#dialog_edit .isvisible").prop('checked', visible);
        $("#dialog_edit .siteid").text($(this).parent().parent().attr('id').split("_").pop());
        $("#dialog_edit").dialog("open");
    });

    $('.editsitesaver').on('click', function () {
        var isvisible = 0
        if ($('.isvisible').prop('checked') == true) isvisible = 1;
        var siteid = $('.siteid').text();
        $.post("functions.php",
        {
            SiteName: $('.sitename').val(),
            templateid: $('.templateid').val(),
            isvisible: isvisible,
            siteid: siteid
        },
        function (status) {
            alert("Status: " + status);
            location.reload();
        });
        $("#dialog_edit").dialog('close');
    });

    $('.editsitedelete').on('click', function () {
        var siteid = $('.siteid').text();
        $.post("functions.php",
        {
            delete: "delete",
            siteid: siteid
        },
        function (status) {
            alert("Status: " + status);
            location.reload();
        });
        $("#dialog_edit").dialog('close');
    });

});