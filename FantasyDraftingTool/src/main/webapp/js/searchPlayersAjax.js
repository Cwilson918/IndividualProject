$(document).ready(function() {
    $('#searchPlayersBtn').click(function () {
        var searchedPlayer = $('#playerSearch').val();
        $.get("playerSearch", function() {
            var $ul = $("<ul>").appendTo($("#foundPlayersContainer"));
            $.each(responseJson, function(index, searchedPlayer) { // Iterate over the JSON array.
                $("<li>").text(item).appendTo($ul);      // Create HTML <li> element, set its text content with currently iterated item and append it to the <ul>.
            });
        });
    });
});


