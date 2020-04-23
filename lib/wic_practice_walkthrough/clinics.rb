class WicPracticeWalkthrough::Clinics
    attr_accessor :title, :address_phone, :url

    # def  initialize(title, address_phone, url)
    #     @clinic = clinic
    #     @title = title
    #     @address_phone = address_phone
    #     @url = url
    # end

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
