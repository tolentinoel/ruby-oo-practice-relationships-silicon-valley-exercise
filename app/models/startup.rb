class Startup

    attr_reader :founder
    attr_accessor :name, :domain

    @@all = []

    def self.all
        @@all
    end

    def self.find_by_founder(name)
        @@all.find do |company|
            company.founder == name
        end
    end

    def initialize(name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain
        @@all << self
    end

    def pivot(str_domain, str_name)
        @domain = str_domain
        @name = str_name
    end

    def sign_contract(v_cap, type, amount)
        FundingRound.new(self, v_cap, type, amount)
    end

    def num_funding_rounds
        FundingRound.all.map {|x| x.startup == self}.count
    end

    def total_funds
        FundingRound.all.map {|business|
            if business.startup == self
                business.investment
            end
        }.sum.to_f
    end

    def investors
        FundingRound.all.collect { |round|
            if round.startup == self
                round.venture_capitalist
            end
        }
    end

    def big_investors
        VentureCapitalist.tres_commas_club & self.investors
    end

end
