<%--
  Created by IntelliJ IDEA.
  User: nzhu
  Date: 2/09/13
  Time: 12:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>AM Def Catalog</title>
    <link rel='stylesheet' type='text/css' href='/css/jquery.kwicks.min.css' />
    <link rel='stylesheet' type='text/css' href='/components/am-menu/css/am-menu.css' />
    <style type='text/css'>
        .def-kwicks {
            width: 515px;
            height: 100px;
            list-style: none outside none;
        }
        .def-kwicks > li {
            height: 100px;
            /* overridden by kwicks but good for when JavaScript is disabled */
            width: 125px;
            margin-left: 5px;
            float: left;
        }
        .def-kwicks-horizontal>* {
            float: left
        }

        .def-kwicks-horizontal>:first-child {
            margin-left: 0
        }

        .def-kwicks-vertical>:first-child {
            margin-top: 0
        }

        #panel-clamp { background-color: #53b388; }
        #panel-muffler { background-color: #5a69a9; }
        #panel-pipe { background-color: #c26468; }
        #panel-tip { background-color: #bf7cc7; }
    </style>
</head>
<body>

    <ul class='def-kwicks def-kwicks-horizontal'>
        <li id='panel-clamp' style='background-image: url(/img/plus-orange.png)'><img src="/img/plus-orange.png" style="width: 96px; height: 96px"/></li>
        <li id='panel-muffler'><img src="/img/plus-orange.png"  style="width: 96px; height: 96px"/></li>
        <li id='panel-pipe'><img src="/img/plus-orange.png"  style="width: 96px; height: 96px"/></li>
        <li id='panel-tip'><img src="/img/plus-orange.png"  style="width: 96px; height: 96px"/></li>
    </ul>
    <div id="test"></div>

    <script src="/js/jquery.kwicks.min.js" type="text/javascript"></script>
    <script src="/components/am-menu/js/am-menu.js" type="text/javascript"></script>
    <script>
        $(document).ready(function(){
            $('.def-kwicks').kwicks({
                maxSize: 384,
                behavior: 'menu'
            });
//            $('.kwicks').on('select.kwicks', function(e, data){
//
//            });
            $('#test').ammenu({
                columnNumber: 3,
                dataSource: [
                    {title:'Add', url:'/img/plus-orange.png'}
                ]
            });

        });
    </script>
</body>
</html>