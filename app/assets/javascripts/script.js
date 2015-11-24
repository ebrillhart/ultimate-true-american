$(document).ready(function() {
    // function that runs on the game show page to calculate the beers needed
    // based on the number of players added
    function beerCalc() {
        var players = $('#noOfPlayers').html();
        // each player needs 6 beers for the game
        var result = parseInt(players) * 6;
        $('#beerModalText').html("You will need at least " + result + " beers!");
    }
    beerCalc();
    // function that randomizes a quote to show on the guess quote page
    // should choose a random quote each time the user clicks the button
    function quote() {
        var firstHalves = ["Houston,", "The only thing we have to fear", "Speak softly", "Ask not what your country can do for you,", "Happy Birthday, Mr.", "Give me liberty,", "One small step for man,", "We hold these truths to be self-evident,", "O'er the land of the free", "From sea", "I'm proud to be an American, where at least", "From every mountainside,", "United we stand,", "With liberty and", "Mr. Gorbachev,"];
        var secondHalves = ["we have a problem.", "is fear itself.", "and carry a big stick.", "ask what you can do for your country.", "President.", "or give me death!", "one giant leap for mankind.", "that all men are created equal.", "and the home of the brave!", "to shining sea.", "I know I'm free.", "let freedom ring!", "divided we fall.", "justice for all.", "tear down this wall!"];
        var number = Math.floor(Math.random() * 15);
        var firstHalf = firstHalves[number];
        var secondHalf = secondHalves[number];
        $('#firstHalf').html(firstHalf);
        $('#secondHalf').html(secondHalf);
    }
    quote();
    // button to show the second half of the quote
    $("#quoteAnswer").on("click", function() {
        $("#quoteDiv2").fadeIn(500);
    });
    // function that randomizes a commonality pair on the commonality turn option
    // should choose a random pairing each time the turn is chosen
    function commonality() {
        var firstThings = ["Rocky", "Clint Eastwood", "Thomas Jefferson", "Donald Trump", "Armstrong", "Prince", "Lewis", "Sarah Palin", "Ben Franklin", "Alaska", "Cholera", "Jeb!", "All the President's Men"];
        var secondThings = ["Muhammad Ali", "John Wayne", "John Adams", "George Washington", "Young", "Martin Luther King", "Clark", "Vietnam War", "Thomas Edison", "Russia", "Covered Wagons", "The 41st President", "Dick"];
        var answers = ["Boxers", "Cowboys", "Died the same day", "Not their real hair", "Neil", "American Royalty", "Explorers", "John McCain", "Electricity", "Sarah Palin can see them from her house", "The Oregon Trail", "The Bush Family", "Movies About Watergate"];
        var number = Math.floor(Math.random() * 14);
        var firstThing = firstThings[number];
        var secondThing = secondThings[number];
        var answer = answers[number];
        $('#commonality1').html(firstThing);
        $('#commonality2').html(secondThing);
        $('#commonalityAnswer').html(answer);
    }
    commonality();
    
    //button to show the answer
    $("#commonalityShow").on("click", function() {
        $("#div3").fadeIn(500);
    });
    // function that creates a random number for the count turn option
    // should only generate a number between 1 and 5
    function theCount() {
        var number = Math.floor(Math.random() * 5) + 1;
        $('#countNumber').html(number);
    }
    theCount();
});