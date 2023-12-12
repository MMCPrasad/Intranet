<%-- 
    Document   : whistleblowing
    Created on : 27 Oct 2023, 3:15:04 pm
    Author     : L580
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body oncontextmenu="return false" style="margin: 0px">
        <iframe style="pointer-events:none;" frameborder="0" oncontextmenu="return false" width="100%" height="7500" src="files/FFL.pdf#embedded=true&toolbar=0&navpanes=0" ></iframe>

        <script>
            document.addEventListener('keyup', (e) => {
                if (e.key == 'PrintScreen') {
                    navigator.clipboard.writeText('');
                }
            });
        </script>
    </body>
</html>
