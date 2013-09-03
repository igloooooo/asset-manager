/**
 *             $('#test').ammenu({
                 dataSource: [
                     {title:'Clamp'},{title:'Muffler'},{title:'Pipe'}
                 ]
             })
 */
$(function ()
{
    $.widget("iglooit.ammenu", {
        options: {
            dataSource: null,
            type: 'menu',
            columnNumber: null,
            onSelect: null
        },
        _create: function ()
        {
            this.id = this.element.attr('id');
            if (!this.id)
            {
                this.id = this.element.uniqueId().attr('id');
            }
            if (this.options.columnNumber)
            {
                this.warpper = $('<ul class="kwicks am-menu-nest-vertical" ></ul>').appendTo(this.element);
            }
            else
            {
                this.warpper = $('<ul class="kwicks kwicks-horizontal" ></ul>').appendTo(this.element);
            }
            if (this.options.dataSource)
            {
                if ($.isArray(this.options.dataSource))
                {
                    this.data = this.options.dataSource;
                    this._initialize();
                }
                else if ($.type(this.options.dataSource) === 'function')
                {
                    this.options.dataSource.call(this, this._handleDataLoad);
                }
            }
        },
        _initialize: function ()
        {
            var $this = this;
            this._renderData();
        },
        _handleDataLoad: function (data)
        {
            this.data = data;
            if (!this.data)
            {
                this.data = [];
            }

            this._initialize();
        },
        _renderData: function ()
        {
            var $this = this;
            this.data.push({title: '_add', url: null});
            if (this.data)
            {
                this.warpper.html('');
                if (this.options.columnNumber)
                {
                    // nested layout
                    var len = this.data.length;
                    var columnNumber = this.options.columnNumber;
                    var rowNumber = len / columnNumber + 1;
                    var i = 0;
                    for (var rowIndex = 0; rowIndex < rowNumber; rowIndex++)
                    {
                        var rowWarpper = $('<li></li>').appendTo(this.warpper);
                        rowWarpper = $('<ul class="kwicks kwicks-horizontal"></ul>').appendTo(rowWarpper);
                        for (var columnIndex = 0; columnIndex < columnNumber && i < len; columnIndex++)
                        {
                            var rowData = this.data[i];
                            if (rowData)
                            {
                                var id = "panel-clamp-" + i;
                                var row = $("<li id='" + id + "'></li>").appendTo(rowWarpper);
                                if (rowData.title == '_add')
                                {
                                    var img = $('<a href="/amDef?catlog=1" target="_self"></a>').appendTo(row);
                                    var my_css_class = {'background-image': 'url(/img/plus-orange.png)', 'background-repeat':'no-repeat'};
                                    row.css(my_css_class)
                                }
                                else
                                {
                                    var img = $('<a href="/amDef/list/'+rowData.id+'" target="_self"></a>').appendTo(row);
                                    row.css('background-image',rowData.url)
                                }
                            }
                            i++;
                        }
                    }
                }
                else
                {
                    var first = 0;
                    var rows = this.data.length;

                    for (var i = first; i < (first + rows); i++)
                    {
                        var rowData = this.data[i];

                        if (rowData)
                        {
                            var id = "panel-clamp-" + i;
                            var row = $('<li id="' + id + '">' + rowData.title + '</li>').appendTo(this.warpper);
                        }
                    }
                }


                $('.kwicks').kwicks({
                    maxSize: 256,
                    behavior: this.type

                });

                $('.kwicks').on('select.kwicks', function (e, data)
                {
                    if (this.options.onSelect)
                        this.options.onSelect(e, data)
                });
            }
        }
    });
});