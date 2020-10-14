class FundingRound

    @@all = []

    def self.all
        @@all
    end

    def initialize(startup, v_cap, type, investment)
        @startup = startup
        @venture_capitalist = v_cap
        @type = type
        @investment = investment
        @@all << self
    end

end
