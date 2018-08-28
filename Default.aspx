<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset='utf-8' />
    <link href="assets/fullcalendar.min.css" rel="stylesheet" />
    <link href="assets/fullcalendar.print.min.css" rel="stylesheet" media='print' />
    <script src="assets/moment.min.js"></script>
    <script src="assets/jquery.min.js"></script>
    <script src="assets/fullcalendar.min.js"></script>


    <script>

        $(document).ready(function () {

            $('#calendar').fullCalendar({
                header: {
                    left: 'prev,next today',
                    center: 'title',
                    right: 'month,basicWeek,basicDay,listMonth'
                },
                defaultDate: new Date($.now()),//'2018-03-12',
                navLinks: true, // can click day/week names to navigate views
                editable: true,
                eventLimit: true, // allow "more" link when too many events
                events: 'Handler.ashx'
            });
        });

    </script>
    <style>
        body {
            margin: 40px 10px;
            padding: 0;
            font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
            font-size: 14px;
        }

        #calendar {
            max-width: 900px;
            margin: 0 auto;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id='calendar'></div>
    </form>
</body>
</html>
