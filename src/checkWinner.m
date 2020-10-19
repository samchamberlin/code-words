function [result] = checkWinner(turn, numBlue, numRed, blackWord)

if (numBlue == 9)
    result = "blueWins";
elseif (numRed == 8)
    result = "redWins";
elseif (blackWord == "true")
    if (turn == "blue")
        result = "blueLoses";
    elseif (turn == "red")
        result = "redLoses";
    end
else
    result = "none";
end     
