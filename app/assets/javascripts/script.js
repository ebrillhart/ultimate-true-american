$(document).ready(function() {

    function beerCalc() {
        var players = $('#noOfPlayers').html().parseInt();
        var result = players * 6;
        $('#beerModalText').html("You will need at least " + result + " beers!");
    }
});