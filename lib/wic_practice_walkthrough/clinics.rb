class WicPracticeWalkthrough::Clinics
    attr_accessor :title, :address_phone, :url

    @@all = []

    def initialize
        @@all << self
    end

    def self.all
        @@all
    end

    def self.reset_all
        @@all.clear
    end
end
