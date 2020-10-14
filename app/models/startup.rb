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
    end

    def pivot(str_domain, str_name)
        @domain = str_domain
        @name = str_name
    end


end
