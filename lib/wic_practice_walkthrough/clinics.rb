class WicPracticeWalkthrough::Clinics
    attr_accessor :name, :address, :phone, :hours, :url

    def self.scrape_clinic_names
        doc = Nokogiri::HTML(open("https://www.wicprograms.org/ci/co-denver"))
        binding.pry
    end
end
