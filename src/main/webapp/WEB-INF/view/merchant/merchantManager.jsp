<%--
  Created by IntelliJ IDEA.
  User: zhuhome
  Date: 13-8-12
  Time: 下午10:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>

</head>
<body>
    <div id="actionPanel" title="Action Panel">

        <!-- widget content -->
        <div class="widget-content">
            <div class="btn-circle-panel large">
                <ul class="btn-circle">
                    <li class="danger">
                        <a class="bottom_tooltip" href="/merchant" data-original-title="Merchant List">
                            <i class="icon-tasks text-error"></i>
                        </a>
                    </li>
                    <li class="warning">
                        <a id="addMerchantLink" class="bottom_tooltip" href="#" data-original-title="Add Merchant">
                            <i class="icon-comments text-warning"></i>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <!-- ./ widget content -->
    </div>
    <!-- merchant list -->
    <div id="manageList"></div>
    <!-- ./ merchant list -->
    <!-- add new merchant -->
    <div id="addMerchantDlg" title="Add Merchant">
        <fieldset id="addMerchantTitle">
            <legend>Add Merchant</legend>

        </fieldset>
    </div>
    <!-- ./ add new merchant -->
    <script type="text/javascript">
        $(function() {
            $('#addMerchantDlg').puidialog({
                showEffect: 'fade',
                hideEffect: 'fade',
                minimizable: true,
                maximizable: true,
                modal: true,
                buttons: [{
                        text: 'Yes',
                        icon: 'ui-icon-check',
                        click: function() {
                            $('#addMerchantDlg').puidialog('hide');
                        }
                    },
                    {
                        text: 'No',
                        icon: 'ui-icon-close',
                        click: function() {
                            $('#addMerchantDlg').puidialog('hide');
                        }
                    }
                ]
            });
            $('#actionPanel').puipanel();
            $('#manageList').puidatatable({
                caption: 'Merchant List',
                paginator: {
                    rows: 5
                },
                columns: [
                    {field:'name', headerText: 'name', sortable:true},
                    {field:'tradeName', headerText: 'tradeName', sortable:true},
                    {field:'contactName', headerText: 'contactName', sortable:true},
                    {field:'contactNumber', headerText: 'contactNumber', sortable:true}
                ],
                datasource: function(callback){
                    $.ajax({
                        type: "GET",
                        url: '/merchant/list',
                        dataType: "json",
                        context: this,
                        success: function(response) {
                            callback.call(this, response);

                        }
                    });
                },
                selectionMode: 'multiple',
                rowSelect: function(event, data) {
                    $('#messages').puigrowl('show', [{severity:'info', summary: 'Row Selected', detail: (data.brand + ' ' + data.vin)}]);
                },
                rowUnselect: function(event, data) {
                    $('#messages').puigrowl('show', [{severity:'info', summary: 'Row Unselected', detail: (data.brand + ' ' + data.vin)}]);
                }
            });
            $('#addMerchantLink').click(function(){
                $('#addMerchantDlg').puidialog('show');
            })
        })
    </script>
</body>
</html>