<%-- 
    Document   : constitution
    Created on : 18 Oct 2023, 9:57:14 am
    Author     : L580
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fintrex - Intranet</title>
        <%@include file="jspf/header.jspf" %>
        <style>
            html, body {
                height: 100%;
            }
        </style>
    </head>
    <body oncontextmenu="return false" style="margin: 0px">
        <iframe style="pointer-events:none;" frameborder="0" oncontextmenu="return false" width="100%" height="7500" src="" ></iframe>

        <script>
            document.addEventListener('keyup', (e) => {
                if (e.key == 'PrintScreen') {
                    navigator.clipboard.writeText('');
                }
            });

            function loadFileByName(name) {
                const url = `policy/path/view/${name}`;

                fetch(url)
                        .then(response => {
                            if (response.ok) {
                                return response.blob();
                            } else if (response.status === 404) {
                                // Handle file not found error
                                console.error('File not found');
                            } else {
                                throw new Error('Network response was not ok');
                            }
                        })
                        .then(blob => {
                            // Create a URL for the blob
                            const objectURL = URL.createObjectURL(blob);

                            // Create an iframe to display the file
                            const iframe = document.createElement('iframe');
                            iframe.src = objectURL;
                            iframe.style.pointerEvents = 'none';
                            iframe.width = '100%';
                            iframe.height = 7500;


                            document.body.appendChild(iframe);
                        })
                        .catch(error => {

                            console.error('Error:', error);
                        });
            }


            loadFileByName();

        </script>
    </body>

</html>
