//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .

$(document).ready(function() {
    $('.has-tooltip').tooltip();
    $('.has-popover').popover({
        trigger: 'hover'
    });
});