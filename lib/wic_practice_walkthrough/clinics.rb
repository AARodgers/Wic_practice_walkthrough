class WicPracticeWalkthrough::Clinics
    attr_accessor :all_clinic_info

    def self.scrape_lowry_clinic
        doc = Nokogiri::HTML(open("https://www.wicprograms.org/ci/co-denver"))
        lowry_clinic_info = []
        url = doc.css(".span12").first.css("a").attr("href").text
        address_phone = doc.css(".span12").first.css("p")[0].text.strip.gsub("\r\n", "")
        lowry_clinic_info << url
        lowry_clinic_info << address_phone
        lowry_clinic_info
    end


    def self.scrape_eastside_clinic
        doc = Nokogiri::HTML(open("https://www.wicprograms.org/ci/co-denver"))
        eastside_clinic_info = []
        url = doc.css(".span12")[1].css("a").attr("href").text
        address_phone = doc.css(".span12")[1].css("p")[0].text.strip.gsub("\r\n", "")
        eastside_clinic_info << url
        eastside_clinic_info << address_phone
        eastside_clinic_info
    end


end
