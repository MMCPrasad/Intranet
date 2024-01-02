<%-- 
    Document   : admincontrol
    Created on : Aug 28, 2023, 8:39:56 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">        

        <title>Fintrex - Intranet</title>
        <%@include file="jspf/header.jspf" %>  
        <link href="https://fonts.gstatic.com" rel="preconnect">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">


        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


        <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
        <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
        <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
        <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">
        <link href="assets/css/slimselect.css" rel="stylesheet">

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@10.15.5/dist/sweetalert2.min.css">


        <script src="https://kit.fontawesome.com/089c43472f.js" crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>

        <link href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.min.css" rel="stylesheet">
        <link href="https://cdn.datatables.net/buttons/1.7.1/css/buttons.dataTables.min.css" rel="stylesheet">
        <link href="https://cdn.datatables.net/select/1.3.3/css/select.dataTables.min.css" rel="stylesheet">
        <link href="https://editor.datatables.net/extensions/Editor/css/editor.dataTables.min.css" rel="stylesheet">

        <link href="https://unpkg.com/tabulator-tables@5.4.4/dist/css/tabulator.min.css" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Ubuntu&display=swap" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Ysabeau+SC:wght@700&display=swap" rel="stylesheet">

    </head>
    <body>
        <%@include file="jspf/loader.jspf" %>
        <%@include file="jspf/navbar.jspf" %>

        <style>
            /* Add this to your existing style block or create a new one */

            /* Add this to your existing style block or create a new one */


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
                background: url('assets/img/system/syst.jpg') center center / cover no-repeat;
                opacity: 0.2; /* Adjust the opacity value as needed */
                z-index: -1; /* Ensure the pseudo-element is behind the content */
            }

            .card {
                background-color: rgba(255, 255, 255, 0.8); /* Use a semi-transparent background for cards */
                border: 3px solid #dee2e6;
                border-radius: 10px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.4);
                transition: box-shadow 0.3s ease-in-out;
            }

            .card:hover {
                box-shadow: 0 30px 46px rgba(0, 0, 0, 0.4);
                border-color: #79c14e;
            }

            .btn-primary {
                background-color: #007bff;
                border-color: #007bff;
            }

            .btn-primary:hover {
                background-color: #0056b3;
                border-color: #0056b3;
            }

        </style>

        <main id="main" class="main">
            <section class="core"  >
                <div class="row"   >
                    <div class="head" style="margin-left: 2rem;margin-top: 1rem;">
                        <h4>Core Systems</h4>
                        <hr style="margin-top: -0.5rem;border: 2px solid #79c14e;">


                    </div>

                    <div class="col" style="margin-left: 2rem; margin-top: 1rem;font-family: 'Ysabeau SC'; ">
                        <div class="row" id="core" style="margin-left: 5rem;margin-top: -1rem;">
                        </div> 
                    </div>
                </div>



                <div class="row"   >
                    <div class="head" style="margin-left: 2rem;margin-top: 1rem;">
                        <h4>Internal Systems</h4>
                        <hr style="margin-top: -0.5rem;border: 2px solid #79c14e;">
                    </div>
                    <div class="col" style="margin-left: 2rem; margin-top: 1rem;font-family: 'Ysabeau SC'; ">
                        <div class="row" id="internal" style="margin-left: 5rem;margin-top: -1rem;">
                        </div> 
                    </div>
                </div>


                <div class="row"   >
                    <div class="head" style="margin-left: 2rem;margin-top: 1rem;">
                        <h4>Utility Systems</h4>
                        <hr style="margin-top: -0.5rem;border: 2px solid #79c14e;">
                    </div>
                    <div class="col" style="margin-left: 2rem; margin-top: 1rem;font-family: 'Ysabeau SC'; ">
                        <div class="row" id="util" style="margin-left: 5rem;margin-top: -1rem;">
                        </div> 
                    </div>
                </div>


            </section>

        </main>

        <script>
            loadCore();


            function loadCore() {
                fetch('system/images')
                        .then(response => response.json())
                        .then(images => {
                            let core = document.getElementById('core');
                            core.innerHTML = ''; // Clear existing content

                            for (let i = 0; i < images.length; i++) {
                                if (images[i].type === '1') { // Check the type property
                                    // Create a card element
                                    let card = document.createElement('div');
                                    card.classList.add('card');
                                    card.style.width = '12rem'; // Set the width of the card as needed

                                    // Create a card body
                                    let cardBody = document.createElement('div');
                                    cardBody.classList.add('card-body');

                                    // Create a row for the two columns
                                    let row = document.createElement('div');
                                    row.classList.add('row');

                                    // Column for the image
                                    let imageColumn = document.createElement('div');
                                    imageColumn.classList.add('col-4');

                                    // Create an image element
                                    let image = document.createElement('img');
                                    image.src = 'system/path/view/' + images[i].path;
                                    image.classList.add('card-img-top');
                                    image.alt = images[i].name;
                                    image.style.width = '180%';

                                    // Column for the name
                                    let nameColumn = document.createElement('div');
                                    nameColumn.classList.add('col-8');

                                    // Create a caption element
                                    let imageCaption = document.createElement('h5');
                                    imageCaption.textContent = images[i].name;
                                    imageCaption.style.textAlign = 'justify';
                                    imageCaption.style.marginTop = '1rem';
                                    imageCaption.style.marginLeft = '0.5rem';
                                    imageCaption.style.width = '200%';
                                    imageCaption.style.fontSize = '1.1rem';
                                    imageCaption.style.fontFamily = 'Ubuntu';

                                    // Add a click event listener to the card
                                    card.addEventListener('click', function () {
                                        // Open the link in a new window/tab when the card is clicked
                                        window.open(images[i].link, '_blank');
                                    });

                                    // Append elements to the columns
                                    imageColumn.appendChild(image);
                                    nameColumn.appendChild(imageCaption);

                                    // Append columns to the row
                                    row.appendChild(imageColumn);
                                    row.appendChild(nameColumn);

                                    // Append the row to the card body
                                    cardBody.appendChild(row);

                                    // Append the card body to the card
                                    card.appendChild(cardBody);

                                    // Add margin between the cards
                                    card.style.margin = '10px';

                                    // Append the card to the internal container
                                    core.appendChild(card);
                                }
                            }
                        });
            }
            loadUtil();


            function loadInternal() {
                fetch('system/images')
                        .then(response => response.json())
                        .then(images => {
                            let internal = document.getElementById('internal');
                            internal.innerHTML = ''; // Clear existing content

                            for (let i = 0; i < images.length; i++) {
                                if (images[i].type === '2') { // Check the type property
                                    // Create a card element
                                    let card = document.createElement('div');
                                    card.classList.add('card');
                                    card.style.width = '12rem'; // Set the width of the card as needed

                                    // Create a card body
                                    let cardBody = document.createElement('div');
                                    cardBody.classList.add('card-body');

                                    // Create a row for the two columns
                                    let row = document.createElement('div');
                                    row.classList.add('row');

                                    // Column for the image
                                    let imageColumn = document.createElement('div');
                                    imageColumn.classList.add('col-4');

                                    // Create an image element
                                    let image = document.createElement('img');
                                    image.src = 'system/path/view/' + images[i].path;
                                    image.classList.add('card-img-top');
                                    image.alt = images[i].name;
                                    image.style.width = '180%';

                                    // Column for the name
                                    let nameColumn = document.createElement('div');
                                    nameColumn.classList.add('col-8');

                                    // Create a caption element
                                    let imageCaption = document.createElement('h5');
                                    imageCaption.textContent = images[i].name;
                                    imageCaption.style.textAlign = 'justify';
                                    imageCaption.style.marginTop = '1rem';
                                    imageCaption.style.marginLeft = '0.1rem';
                                    imageCaption.style.width = '180%';
                                    imageCaption.style.fontSize = '1.1rem';
                                    imageCaption.style.fontFamily = 'Ubuntu';

                                    // Add a click event listener to the card
                                    card.addEventListener('click', function () {
                                        // Open the link in a new window/tab when the card is clicked
                                        window.open(images[i].link, '_blank');
                                    });

                                    // Append elements to the columns
                                    imageColumn.appendChild(image);
                                    nameColumn.appendChild(imageCaption);

                                    // Append columns to the row
                                    row.appendChild(imageColumn);
                                    row.appendChild(nameColumn);

                                    // Append the row to the card body
                                    cardBody.appendChild(row);

                                    // Append the card body to the card
                                    card.appendChild(cardBody);

                                    // Add margin between the cards
                                    card.style.margin = '10px';

                                    // Append the card to the internal container
                                    internal.appendChild(card);
                                }
                            }
                        });
            }

            loadInternal();




            function loadUtil() {
                fetch('system/images')
                        .then(response => response.json())
                        .then(images => {
                            let util = document.getElementById('util');
                            util.innerHTML = ''; // Clear existing content

                            for (let i = 0; i < images.length; i++) {
                                if (images[i].type === '3') { // Check the type property
                                    // Create a card element
                                    let card = document.createElement('div');
                                    card.classList.add('card');
                                    card.style.width = '12rem'; // Set the width of the card as needed

                                    // Create a card body
                                    let cardBody = document.createElement('div');
                                    cardBody.classList.add('card-body');

                                    // Create a row for the two columns
                                    let row = document.createElement('div');
                                    row.classList.add('row');

                                    // Column for the image
                                    let imageColumn = document.createElement('div');
                                    imageColumn.classList.add('col-4');

                                    // Create an image element
                                    let image = document.createElement('img');
                                    image.src = 'system/path/view/' + images[i].path;
                                    image.classList.add('card-img-top');
                                    image.alt = images[i].name;
                                    image.style.width = '180%';

                                    // Column for the name
                                    let nameColumn = document.createElement('div');
                                    nameColumn.classList.add('col-8');

                                    // Create a caption element
                                    let imageCaption = document.createElement('h5');
                                    imageCaption.textContent = images[i].name;
                                    imageCaption.style.textAlign = 'justify';
                                    imageCaption.style.marginTop = '1rem';
                                    imageCaption.style.marginLeft = '0.5rem';
                                    imageCaption.style.width = '200%';
                                    imageCaption.style.fontSize = '1.1rem';
                                    imageCaption.style.fontFamily = 'Ubuntu';

                                    // Add a click event listener to the card
                                    card.addEventListener('click', function () {
                                        // Open the link in a new window/tab when the card is clicked
                                        window.open(images[i].link, '_blank');
                                    });

                                    // Append elements to the columns
                                    imageColumn.appendChild(image);
                                    nameColumn.appendChild(imageCaption);

                                    // Append columns to the row
                                    row.appendChild(imageColumn);
                                    row.appendChild(nameColumn);

                                    // Append the row to the card body
                                    cardBody.appendChild(row);

                                    // Append the card body to the card
                                    card.appendChild(cardBody);

                                    // Add margin between the cards
                                    card.style.margin = '10px';

                                    // Append the card to the internal container
                                    util.appendChild(card);
                                }
                            }
                        });
            }


        </script>

        <%@include file="jspf/scripts.jspf" %>
        <script type="text/javascript" src="files/js/slimselect.js"></script>
        <script type="text/javascript" src="files/js/datatables.min.js"></script>
        <script type="text/javascript" src="files/js/sweetalert2.js"></script>
        <script type="text/javascript" src="files/js/func.js"></script>
        <script type="text/javascript" src="files/js/autoNumeric.js"></script>
        <script type="text/javascript" src="files/js/dataTables.responsive.min.js"></script>
    </body>
</html>
