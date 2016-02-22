$(function(){
    //$('.box_container').css('background-color', 'red');
    $('#display .pagination a').on('click', function(){
            $.getScript(this.href);
            return false;
    });

    $("#property_search input").keyup( function(){
        $.get($("#property_search").action, $("#property_search").serialize(),null, "script");
    return false;
    });

    $("#property_search select").change(function() {
        $.get($("#property_search").action, $("#property_search").serialize(),null, "script");
         return false;
    });
    $('.filter').on('click', function(){
        $.get()
    });




    $('#property_search :input[type="number"]').change(function() {
        $.get($("#property_search").action, $("#property_search").serialize(),null, "script");
        return false;
    });
});

