


$(document).ready(function() {

    buildDropDownNavigation();

    // Register language change events
    $(".languageSelectorButton").click(function() {
        setLanguage($(this).attr("value"));
    });

});

function buildDropDownNavigation() {

    $("#navigation ul").children().each(function(index, obj) {

        var li = $(obj);
        var navIndex = li.attr("navIndex");
        if (navIndex != null)
        {
            // Move item to sublevel if necessary
            if (navIndex.includes("."))
            {
                var parentID = navIndex.substring(0, navIndex.indexOf("."));
                li.remove();

                var parent = $("#navigation ul li:nth-child(" + parentID + ")");
                parent.addClass("dropdown");
                parent.children().first().addClass("dropbtn");

                if (parent.find("ul").length == 0)
                {
                    parent.append("<ul class='dropdown-content'></ul>");
                }
                parent.find("ul").append(li);
            }
        }
    });
}

function setLanguage(language) {

    // Send requested language to the server
    $.ajax({
        url: "postback/setLanguage.php", 
        type: "POST",
        data: {
            language: language,
        },
        success: function(result){
            if (result == "Success")
            {
                // Request successful, reload page
                location.reload();
            }
        }
    });
}