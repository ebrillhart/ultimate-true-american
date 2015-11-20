$(document).ready(function() {

    function beerCalc() {
        var players = $('#noOfPlayers').html();
        var result = parseInt(players) * 6;
        $('#beerModalText').html("You will need at least " + result + " beers!");
    }

    beerCalc();
});