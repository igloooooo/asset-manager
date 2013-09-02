$(function() {
    $.widget("iglooit.am.ammenu", {
        options: {
            datasource: null
        },
        _create: function() {
            this.id = this.element.attr('id');
            if(!this.id) {
                this.id = this.element.uniqueId().attr('id');
            }
            this.element.addClass('kwicks kwicks-horizontal');
            if(this.options.datasource) {
                if($.isArray(this.options.datasource)) {
                    this.data = this.options.datasource;
                    this._initialize();
                }
                else if($.type(this.options.datasource) === 'function') {
                    this.options.datasource.call(this, this._handleDataLoad);
                }
            }
        }
    });
});