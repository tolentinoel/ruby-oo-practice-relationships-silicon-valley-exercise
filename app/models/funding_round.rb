class FundingRound

    @@all = []

    def self.all
        @@all
    end

    def initialize(startup, v_cap, type)
        @startup = startup
        @venture_capitalist = v_cap
        @type = type
        @@all << self
    end

end
