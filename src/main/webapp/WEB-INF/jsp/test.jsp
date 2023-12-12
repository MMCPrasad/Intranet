<%-- 
    Document   : test
    Created on : 7 Sept 2023, 1:36:02 pm
    Author     : L580
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>



    </head>
    <body>
        <h1>Hello World!</h1>


        <input id="txt" type="text">
        <input id="file" type="file" multiple="">
        <button id="uploadBtn">Upload</button>
        <div class="row" id="imgList">
        </div>

    </body>


    <script>



        document.getElementById('uploadBtn').addEventListener('click', function () {
            let fd = new FormData();
            let file = document.getElementById('file').files;
            for (var i = 0; i < file.length; i++) {
                fd.append('file', file[i]);
            }
            let txt = document.getElementById('txt').value;
            fd.append('txt', txt);
            fetch('test/upload', {
                method: 'POST',
                body: fd
            }).then(response => {
                console.log(response.text());
                loadImages();
            });
        });

        loadImages();

        function loadImages() {
            fetch('test/all').then(response => {
                return response.json();
            }).then(images => {

                let imgList = document.getElementById('imgList');
                imgList.innerHTML = '';

                for (var i = 0; i < images.length; i++) {
                    let div = document.createElement('div');
                    div.classList.add('col-2');
                    div.innerHTML = '<img src="test/view/' + images[i].path + '">';
                    imgList.appendChild(div);
                }
            });
        }




    </script>





</html>