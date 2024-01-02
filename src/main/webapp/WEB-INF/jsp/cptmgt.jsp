<%-- 
    Document   : dashboard
    Created on : Aug 8, 2023, 4:22:07 PM
    Author     : cpm.999cc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fintrex - Intranet</title>
        <%@include file="jspf/header.jspf" %>
        <link href="assets/img/pr/images.png" rel="icon">
        <link href="assets/img/pr/images.png" rel="apple-touch-icon">
        <link rel = "stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Jost:wght@300&family=Marvel:wght@700&display=swap" rel="stylesheet">
        <!--        <link rel="stylesheet" href="files/css/bootstrap.css">-->

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Philosopher:wght@700&display=swap" rel="stylesheet">

    </head>
    <body>
        <%@include file="jspf/loader.jspf" %>
        <%@include file="jspf/navbar.jspf" %>

        <style>
            body {
                position: relative;
            }

            body::before {
                content: "";
                position: fixed;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background: url('assets/img/system/12345.jpg') center center / cover no-repeat;
                opacity: 0.3; /* Adjust the opacity value as needed */
                z-index: -1; /* Ensure the pseudo-element is behind the content */
            }

            .cardhead{
                background-color: #343333;
                color:#0ABE9E;
                font-family: "jost";
            }



            img {
                max-width: 100%;
                border: 0px;
            }

        </style>


        <div class="row">
            <div class="top" style="margin-left: 4rem; margin-top: 1rem;background-color: #E4D3E6;font-family: 'Philosopher', sans-serif; ">
                <h2>Corporate Management</h2>
            </div>
        </div>

        <div class="container">
            <div class="row" id="gallery" style="padding: 0.1rem 5rem"></div>
        </div>
    </div>


    <%@include file="jspf/scripts.jspf" %>

    <script type="text/javascript" src="files/js/slimselect.js"></script>
    <script type="text/javascript" src="files/js/datatables.min.js"></script>
    <script type="text/javascript" src="files/js/sweetalert2.js"></script>
    <script type="text/javascript" src="files/js/func.js"></script>
    <script type="text/javascript" src="files/js/autoNumeric.js"></script>
    <script type="text/javascript" src="files/js/dataTables.responsive.min.js"></script>
    <script type="text/javascript" src="files/js/jquery.highlight.js"></script>
    <script type="text/javascript" src="files/js/dataTables.searchHighlight.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>



    <script>
        function directors() {
            fetch('director/image')
                    .then(response => response.json())
                    .then(images => {
                        const imgList = document.getElementById('gallery');

                        images.forEach(image => {
                            if (image.role === '2') {
                                const row = document.createElement('div');
                                row.classList.add('row');
                                row.style.padding = '40px';

                                const col3 = document.createElement('div');
                                col3.classList.add('col-3');
                                const avatar = document.createElement('div');
                                avatar.classList.add('u-member-grid__avatar');

                                const img = document.createElement('img');
                                img.src = 'director/path/view/' + image.path;
                                img.alt = image.alt;

                                avatar.appendChild(img);
                                col3.appendChild(avatar);
                                row.appendChild(col3);

                                const col9 = document.createElement('div');
                                col9.classList.add('col-9');
                                const info = document.createElement('div');
                                info.classList.add('u-member-grid__info');

                                const h4 = document.createElement('h4');
                                h4.textContent = image.name;
                                h4.style.fontFamily = 'Times New Roman, serif';

                                const h6 = document.createElement('h6');
                                h6.textContent = image.designation;
                                h6.style.marginBottom = '20px';
                                h6.style.fontFamily = 'Georgia, serif';

                                const p = document.createElement('p');
                                p.textContent = image.model;
                                p.style.fontFamily = 'Georgia, serif';
                                p.style.textAlign = 'justify'; // Set text-align to justify
                                p.style.wordSpacing = '0.2em'; // Adjust the word spacing as needed
                                p.style.whiteSpace = 'pre-wrap';

                                info.appendChild(h4);
                                info.appendChild(h6);
                                info.appendChild(p);
                                col9.appendChild(info);
                                row.appendChild(col9);


                                imgList.appendChild(row);
                                const hr = document.createElement('hr'); // Create a horizontal line element
                                imgList.appendChild(hr); // Append the horizontal line

                                return;
                            }


                        });
                    })
                    .catch(error => {
                        console.error('Error loading images:', error);
                    });
        }

        directors();




    </script>
</body>
</html>











