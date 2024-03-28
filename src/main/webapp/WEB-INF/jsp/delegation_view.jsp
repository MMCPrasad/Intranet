
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delegation Authority</title>
        <%@include file="jspf/header.jspf" %>
        <link rel = "stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

    </head>
    <body>

        <%@include file="jspf/navbar.jspf" %>



        <div id="pdfContainer" style="background-color: #ccc1d4; margin-top: 2rem;">

        </div>
        <style>
            #pdfContainer {
                margin-left: 10rem; /* Adjust margin as needed */
                margin-right: 10rem; /* Adjust margin as needed */
            }
        </style>

        <script>
            // Fetch PDF file from the backend
            fetch('delegation/images')
                    .then(response => response.json())
                    .then(pdf => {
                        if (pdf && pdf.length > 0) {
                            // Assuming pdf is an array of objects and you want to display the latest one
                            const latestPdf = pdf[pdf.length - 1]; // Get the latest PDF object
                            const pdfUrl = 'delegation/path/view/' + latestPdf.path; // Adjust the URL accordingly

                            // Create an <embed> element to display the PDF
                            const embedElement = document.createElement('embed');
                            embedElement.setAttribute('src', pdfUrl);
                            embedElement.setAttribute('type', 'application/pdf');
                            embedElement.setAttribute('width', '100%'); // Display at original size
                            embedElement.setAttribute('height', '1000px'); // Adjust height as needed

                            // Append the <embed> element to the div container
                            document.getElementById('pdfContainer').appendChild(embedElement);
                        } else {
                            console.error('No PDF found or empty response');
                        }
                    })
                    .catch(error => console.error('Error fetching latest PDF:', error));
        </script>

    </body>
</html>




