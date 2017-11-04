function previewImage(targetObj, previewId,imgWidth,imgHeight) {
	
	event.preventDefault();

    var preview = document.getElementById(previewId); //div id   
    var ua = window.navigator.userAgent;

    if (ua.indexOf("MSIE") > -1) {//ie�϶�

        targetObj.select();

        try {
            var src = document.selection.createRange().text; // get file full path 
            var ie_preview_error = document
                    .getElementById("ie_preview_error_" + previewId);

            if (ie_preview_error) {
                preview.removeChild(ie_preview_error); //error�� ������ delete
            }

            var img = document.getElementById(previewId); //�̹����� �ѷ��� �� 

            img.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='"
                    + src + "', sizingMethod='scale')";
        } catch (e) {
            if (!document.getElementById("ie_preview_error_" + previewId)) {
                var info = document.createElement("<p>");
                info.id = "ie_preview_error_" + previewId;
                info.innerHTML = "a";
                preview.insertBefore(info, null);
            }
        }
    } else { //ie�� �ƴҶ�
        var files = targetObj.files;
        for ( var i = 0; i < files.length; i++) {

            var file = files[i];

            var imageType = /image.*/; //�̹��� �����ϰ�츸.. �ѷ��ش�.
            if (!file.type.match(imageType))
                continue;

            var prevImg = document.getElementById("prev_" + previewId); //������ �̸����Ⱑ �ִٸ� ����
            if (prevImg) {
                preview.removeChild(prevImg);
            }

            var img = document.createElement("img");
            img.id = "prev_" + previewId;
            img.classList.add("obj");
            img.file = file;
            img.style.width = imgWidth+'px'; //�⺻������ div�� �ȿ� �ѷ����� ȿ���� �ֱ� ���ؼ� divũ��� ���� ũ�⸦ �������ش�.
            img.style.height = imgHeight+'px';
            
            preview.appendChild(img);

            if (window.FileReader) { // FireFox, Chrome, Opera Ȯ��.
                var reader = new FileReader();
                reader.onloadend = (function(aImg) {
                    return function(e) {
                        aImg.src = e.target.result;
                    };
                })(img);
                reader.readAsDataURL(file);
            } else { // safari is not supported FileReader
                //alert('not supported FileReader');
                if (!document.getElementById("sfr_preview_error_"
                        + previewId)) {
                    var info = document.createElement("p");
                    info.id = "sfr_preview_error_" + previewId;
                    info.innerHTML = "not supported FileReader";
                    preview.insertBefore(info, null);
                }
            }
        }
    }
}