


$(document).ready(function() {

    buildDropDownNavigation();

});

function buildDropDownNavigation() {

    $("#navigation ul").children().each(function(index, obj) {

        var li = $(obj);
        var navIndex = li.attr("navIndex");

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
    });
}