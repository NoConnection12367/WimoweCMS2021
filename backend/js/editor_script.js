$(document).ready(function () {
    tinymce.init({
        selector: 'textarea',
        height: 500,
        theme: 'modern',
        plugins: 'print preview fullpage searchreplace autolink directionality visualblocks visualchars fullscreen image link media template codesample table charmap hr pagebreak nonbreaking anchor toc insertdatetime advlist lists textcolor wordcount imagetools contextmenu colorpicker textpattern help',
        toolbar1: 'formatselect | bold italic strikethrough forecolor backcolor | link | alignleft aligncenter alignright alignjustify  | numlist bullist outdent indent  | removeformat',
        image_advtab: true,
        // without images_upload_url set, Upload tab won't show up
        images_upload_url: 'upload.php',
        relative_urls: false,
        remove_script_host: false,

        // override default upload handler to simulate successful upload
        images_upload_handler: function (blobInfo, success, failure) {
            var xhr, formData;

            xhr = new XMLHttpRequest();
            xhr.withCredentials = false;
            xhr.open('POST', 'upload.php');

            xhr.onload = function () {
                var json;

                if (xhr.status != 200) {
                    failure('HTTP Error: ' + xhr.status);
                    return;
                }

                json = JSON.parse(xhr.responseText);

                if (!json || typeof json.location != 'string') {
                    failure('Invalid JSON: ' + xhr.responseText);
                    return;
                }

                success(json.location);
            };

            formData = new FormData();
            formData.append('file', blobInfo.blob(), blobInfo.filename());

            xhr.send(formData);
        },


    });

    $("#savebutton").click(function () {
        var content = tinyMCE.get('editor').getContent();
        $.post("functions.php",
            {
                content: content,
                siteid: getUrlParameter('loadcontenid'),
                lang: getUrlParameter('lang')
            },
            function (status) {
                //alert("Status: " + status);
                alert("Änderungen wurden gespeichert.");
                url = "http://localhost/WimoweCMS2021/backend/index.php?page=sites_overview"
                window.location = url;
            });
    });

    $("#savebutton_static").click(function () {
        var content = tinyMCE.get('editor').getContent();
        $.post("functions.php",
            {
                content: content,
                Tag: getUrlParameter('loadcontenid'),
                lang: getUrlParameter('lang')
            },
            function (status) {
                //alert("Status: " + status);
                alert("Änderungen wurden gespeichert.");
                url = "http://localhost/WimoweCMS2021/backend/index.php?page=sites_overview"
                window.location = url;
            });
    });

    $("#abbrechenbutton").click(function () {
        url = "http://localhost/WimoweCMS2021/backend/index.php?page=sites_overview"
        window.location = url;
    });

    $("#langselect").val(getUrlParameter('lang'));

    $("#langselect").change(function(){
        var url = window.location.href;
        url = url.slice(0, -2) + $("#langselect").val();
        window.location = url;
        console.log(url);
      }); 
});

function getUrlParameter(sParam) {
    var sPageURL = window.location.search.substring(1),
        sURLVariables = sPageURL.split('&'),
        sParameterName,
        i;

    for (i = 0; i < sURLVariables.length; i++) {
        sParameterName = sURLVariables[i].split('=');

        if (sParameterName[0] === sParam) {
            return sParameterName[1] === undefined ? true : decodeURIComponent(sParameterName[1]);
        }
    }
};