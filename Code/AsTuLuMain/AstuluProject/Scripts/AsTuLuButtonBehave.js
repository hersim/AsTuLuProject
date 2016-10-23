$(document).ready(function () {
    $('buttonState').on('click', ".vodteButton", function() {
        var buttonId = $(this).attr('id');

        var bookId = $('#bookId').attr('id');

        $.post("/Book/UpdateRelationship/", { _bookId: bookId, _buttonId: buttonId },
            function(data) {

            });

    });
});