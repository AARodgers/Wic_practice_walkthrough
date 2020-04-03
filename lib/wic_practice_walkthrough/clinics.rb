class WicPracticeWalkthrough::Clinics
    attr_accessor :all_clinic_info

    def self.scrape_lowry_clinic
        doc = Nokogiri::HTML(open("https://www.wicprograms.org/ci/co-denver"))
        @lowry_clinic_info = doc.css(".span12").first.css("p").text.strip
        @lowry_clinic_info
    end

    def self.scrape_eastside_clinic
        doc = Nokogiri::HTML(open("https://www.wicprograms.org/ci/co-denver"))
        # @eastside_clinic_info = doc.css(".span12").first.css("p").text.strip
        # @eastside_clinic_info
        binding.pry
    end


end
