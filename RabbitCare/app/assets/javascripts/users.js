$( document ).on('turbolinks:load', function() {
    $('input[type=radio][name="user[tipo]"]').change(function () {
            // first: hide all the divs
            $('#enfermeiro').css("display","none");
            $('#medico').css("display","none");

            // then get the div ID to show (i stored it in the "value" of the radio button
            var fieldToShow = $(this).val();
            // now use jQuery selector and change the display setting of that field
            $("#" + fieldToShow).css("display","block");
    });
});