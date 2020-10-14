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



end
