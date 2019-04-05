class GameStats
    # TODO: Please add any fields you think we will need
    # This is a Plain Old Ruby Object (PORO) and 
    # has no behaviour
    def initialize(players, winner, gameID, gameCompletionTime)
        @players = players
        @winner = winner
        @gameID = gameID
        @gameCompletionTime = gameCompletionTime
    end

    def players
        @players
    end

    def winner
        @winner
    end

    def gameID
        @gameID
    end

    def gameCompletionTime
        @gameCompletionTime
    end
end