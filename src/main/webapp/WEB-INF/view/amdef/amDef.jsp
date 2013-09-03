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
        .kwicks {
            width: 515px;
            height: 100px;
        }
        .kwicks > li {
            height: 100px;
            /* overridden by kwicks but good for when JavaScript is disabled */
            width: 125px;
            margin-left: 5px;
            float: left;
        }

        #panel-1 { background-color: #53b388; }
        #panel-2 { background-color: #5a69a9; }
        #panel-3 { background-color: #c26468; }
        #panel-4 { background-color: #bf7cc7; }
    </style>
</head>
<body>
    <ul class='kwicks kwicks-horizontal'>
        <li id='panel-clamp' style='background-image: url(/img/plus-orange.png)'>Clamp</li>
        <li id='panel-muffler'>Muffler</li>
        <li id='panel-pipe'>Pipe</li>
        <li id='panel-tip'>Tip</li>
    </ul>
    <div id="test"></div>
    <script src="/js/jquery.kwicks.min.js" type="text/javascript"></script>
    <script src="/components/am-menu/js/am-menu.js" type="text/javascript"></script>
    <script>
        $(document).ready(function(){
            $('.kwicks').kwicks({
                maxSize: 250,
                behavior: 'menu'
            });
            $('.kwicks').on('select.kwicks', function(e, data){

            });
            $('#test').ammenu({
                columnNumber: 3,
                dataSource: [
                    {title:'Add', url:'plus-orange.png'}
                ]
            })
        });
    </script>
</body>
</html>