$(document).ready(function() {
    var draftingRow = 1;
    var draftingPick = 0;
    $('#foundPlayersContainer').hide();
    $('#removeLastPlayerBtn').hide();
    $('#noPlayersFoundContainer').hide();

    $('#searchPlayersBtn').click(function(e) {
        $('#foundPlayersContainer').show();
        $('#foundPlayersTable').show();
        $('#noPlayersFoundContainer').hide();
        $('#foundPlayersTableBody').empty();
        var playerSearched = $('#inputPlayerSearch').val();
       $.ajax({
           type: 'GET',
           url: 'playerSearch',
           dataType: 'json',
           data: "inputPlayerSearch=" + playerSearched,
           success: function(responseJson) {
               if (!$.trim(responseJson)) {
                   $('#foundPlayersContainer').hide();
                   $('#noPlayersFoundContainer').show();

               } else {
                   console.log(responseJson);
                   $.each(responseJson, function (index, data) {
                       console.log(data);
                       $('#foundPlayersTableBody').append("<tr><td>" + data.fullName + "</td><td>"
                           + data.team + "</td><td>" + data.position + "</td><td>" +
                           "<button class='addPlayerBtn'>Add Player</button></td></tr>");
                   });
               }
           }

       });
    });

    $('#foundPlayersTableBody').on('click', '.addPlayerBtn', function() {
        $('#removeLastPlayerBtn').show();
        if(draftingPick > 11) {
            draftingRow++;
            draftingPick = 1;
        } else {
            draftingPick++;
        }

        var $row = $(this).closest("tr"),        // Finds the closest row <tr>
            $tds = $row.find("td:nth-child(1)"); // Finds the 2nd <td> element

        $.each($tds, function() {                // Visits every single <td> element
            $('#draftboxR' + draftingRow + 'C' + draftingPick).text(($(this).text()));         // Prints out the text within the <td>
        });

        var $row = $(this).closest("tr"),        // Finds the closest row <tr>
            $tds = $row.find("td:nth-child(3)"); // Finds the 2nd <td> element

        $.each($tds, function() {           // Visits every single <td> element
            if($(this).text() == 'QB') {
                $('#draftboxR' + draftingRow + 'C' + draftingPick).css('background-color', 'salmon');         // Prints out the text within the <td>
            } else if($(this).text() == 'RB') {
                $('#draftboxR' + draftingRow + 'C' + draftingPick).css('background-color', 'skyblue');         // Prints out the text within the <td>
            } else if($(this).text() == 'WR') {
                $('#draftboxR' + draftingRow + 'C' + draftingPick).css('background-color', 'moccasin');         // Prints out the text within the <td>
            } else if($(this).text() == 'TE') {
                $('#draftboxR' + draftingRow + 'C' + draftingPick).css('background-color', 'lavender');         // Prints out the text within the <td>
            } else if($(this).text() == 'K') {
                $('#draftboxR' + draftingRow + 'C' + draftingPick).css('background-color', 'springgreen');         // Prints out the text within the <td>
            }
        });
        $('#foundPlayersContainer').hide();
    });

    $('#removeLastPlayerBtn').click(function() {
        if(draftingRow == 1 && draftingPick == 0) {
            $('#removeLastPlayerBtn').hide();
        } else {
            $('#draftboxR' + draftingRow + 'C' + draftingPick).text(draftingRow + "." + draftingPick).css('background-color', 'whitesmoke');
            if (draftingPick == 1) {
                draftingRow--;
                draftingPick = 12;
            } else {
                draftingPick--;
            }
        }
    });






});

