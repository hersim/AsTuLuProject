$(document).ready(function () {
    $('#buttonState').on('click', ".voteButton", function () {
        var buttonIdValue = $(this).attr('id');

        var bookIdValue = document.getElementById("bookID").value;

        $.post("/Book/UpdateRelationship/", { bookId: bookIdValue, buttonId: buttonIdValue },
            function(data) {
                if (data.ResultMessage) {
                    $('#update-message').fadeOut(function () {
                        $('#bodyZone').css("margin-top", "1%");
                        $('#update-message').text(data.ResultMessage);
                        $('#update-message').fadeIn('slow');
                        $('#update-message').fadeOut(1500);
                    });
                } else {
                    switch (data.StatusValue) {
                        // 0 = liked
                        // 1 = unliked
                        // 2 = neutral
                        case 0:
                            $('#upvoteImg').css('border', "solid 3px greenyellow");
                            $('#downvoteImg').css('border', "solid 3px transparent");
                            break;
                        case 1:
                            $('#upvoteImg').css('border', "solid 3px transparent");
                            $('#downvoteImg').css('border', "solid 3px darkred");
                            break;
                        default:
                            $('#upvoteImg').css('border', "solid 3px transparent");
                            $('#downvoteImg').css('border', "solid 3px transparent");
                            break;
                    }
                    $('#scoreZone').text(data.ScoreValue);
                }
            });

    });
    
});