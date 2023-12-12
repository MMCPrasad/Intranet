
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Deposit Rates</title>
        <%@include file="jspf/header.jspf" %>
        <link rel = "stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

    </head>
    <body>

        <%@include file="jspf/navbar.jspf" %>
        <style>
            .table {
                border-collapse: collapse;
                width:90%;
            }

            .table th, .table td {
                border: 2px solid #ddd;
                padding: 8px;
                text-align: center;
            }

            .table th {
                background-color: #f2f2f2;
            }

            .table-responsive {
                display: flex;
                justify-content: center;
                align-items: center;

            }
        </style>


        <div class="row">
            <div style="background-color: #ccc1d4;; margin-top:2rem;">

                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                                <td width="100" rowspan="2"><strong>Period</strong></td>
                                <td colspan="4"><strong>Interest Rates - Genaral Deposite</strong></td>
                                <td colspan="4"><strong>Interest Rates - Senior Citizen Deposits*</strong></td>
                            </tr>

                            <tr>
                                <td width="100" height="40"><strong>Monthly</strong></td>
                                <td width="100" height="40"><strong>AER</strong></td>
                                <td width="100"><strong>Maturity</strong></td>
                                <td width="100"><strong>AER</strong></td>
                                <td width="100"><strong>Monthly</strong></td>
                                <td width="100"><strong>AER</strong></td>
                                <td width="100"><strong>Maturity</strong></td>
                                <td width="100"><strong>AER</strong></td>
                            </tr>

                        </thead>
                        <tbody>
                            <tr height="40">
                                <td><strong>01 Month</strong></td>

                                <td>13%</td>
                                <td>13.8%</td>
                                <td>13%</td>
                                <td>13.8%</td>
                                <td>13%</td>
                                <td>13.8%</td>
                                <td>13%</td>
                                <td>13.8%</td>
                            </tr>
                            <tr height="40">
                                <td><strong>03 Month</strong></td>
                                <td>12.75%</td>
                                <td>13.52%</td>
                                <td>14%</td>
                                <td>14.75%</td>
                                <td>12.75%</td>
                                <td>13.52%</td>
                                <td>14%</td>
                                <td>14.75%</td>

                            </tr>
                            <tr height="40">
                                <td><strong>06 Month</strong></td>
                                <td>11.75%</td>
                                <td>12.4%</td>
                                <td>12.5%</td>
                                <td>12.89%</td>
                                <td>11.75%</td>
                                <td>12.4%</td>
                                <td>12.5%</td>
                                <td>12.89%</td>
                            </tr>
                            <tr height="40">
                                <td><strong>12 Month</strong></td>
                                <td>12.75%</td>
                                <td>13.52%</td>
                                <td>13.5%</td>
                                <td>13.5%</td>
                                <td>13.25%</td>
                                <td>14.09%</td>
                                <td>14%</td>
                                <td>14%</td>
                            </tr>
                            <tr height="40">
                                <td><strong>18 Month</strong></td>
                                <td>12.75%</td>
                                <td>13.52%</td>
                                <td>13.5%</td>
                                <td>13.08%</td>
                                <td>13.25%</td>
                                <td>14.09%</td>
                                <td>14%</td>
                                <td>13.55%</td>
                            </tr>
                            <tr height="40">
                                <td><strong>24 Month</strong></td>
                                <td>12%</td>
                                <td>12.68%</td>
                                <td>14%</td>
                                <td>13.14%</td>
                                <td>12.5%</td>
                                <td>13.24%</td>
                                <td>14.5%</td>
                                <td>13.58%</td>
                            </tr>
                            <tr height="40">
                                <td><strong>36 Month</strong></td>
                                <td>12%</td>
                                <td>12.68%</td>
                                <td>13%</td>
                                <td>11.6%</td>
                                <td>12.5%</td>
                                <td>13.24%</td>
                                <td>13.5%</td>
                                <td>12%</td>
                            </tr>
                            <tr height="40">
                                <td><strong>48 Month</strong></td>
                                <td>12%</td>
                                <td>12.68%</td>
                                <td>13%</td>
                                <td>11.04%</td>
                                <td>12.5%</td>
                                <td>13.24%</td>
                                <td>13.5%</td>
                                <td>11.4%</td>
                            </tr>
                            <tr height="40">
                                <td><strong>60 Month</strong></td>
                                <td>12.5%</td>
                                <td>13.24%</td>
                                <td>14%</td>
                                <td>11.2%</td>
                                <td>13%</td>
                                <td>13.8%</td>
                                <td>14.5%</td>
                                <td>11.52%</td>
                            </tr>

                        </tbody>
                    </table>
                </div>

            </div>
        </div>
    </body>
</html>




