
$(document).ready(function(){
    var bootstrapButton = $.fn.button.noConflict(); // return $.fn.button to previously assigned value
    $.fn.bootstrapBtn = bootstrapButton;          // give $().bootstrapBtn the bootstrap functionality

});
