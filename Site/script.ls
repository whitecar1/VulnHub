function showImage(img) {
    var windowWidth = window.screen.width;
    var windowHeight = window.screen.height;

    var newWindow = window.open("", "Image", "width=" + windowWidth + ",height=" + windowHeight + ",resizable=yes,scrollbars=yes,status=yes,toolbar=no,menubar=no,location=no,left=0,top=0");

    newWindow.document.write("<style>body { background-color: #808080; display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0; }</style>");

    newWindow.document.write("<img src='" + img.src + "' alt='" + img.alt + "' onclick='self.close()' style='max-width: 100%; max-height: 100%;'>");
}

var images = document.getElementsByTagName("img");
for (var i = 0; i < images.length; i++) {
    images[i].addEventListener("click", function() {
        showImage(this);
    });
}