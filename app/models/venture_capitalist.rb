class VentureCapitalist

    attr_accessor :name

    @@all = []

    def self.all
        @@all
    end

    def self.tres_commas_club
        self.all.select {|person| person.total_worth > 1000000000.0}
    end


    def initialize(name, moolah)
        @name = name
        @money = moolah
        @@all << self
    end

    def total_worth
        @money
    end

    def funding_rounds
        FundingRound.all.select {|round| round.venture_capitalist == self}
    end

    def offer_contract(startup, type, amount)
        FundingRound.new(startup, self, type, amount)
    end

    def portfolio
        funding_rounds.select {|round| 
            if round.venture_capitalist == self
                round
            end
        }.uniq.compact
    end

    def biggest_investment
        portfolio.max_by {|round| round.investment}
    end



end
