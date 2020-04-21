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

    def self.scrape_montbello_clinic
        doc = Nokogiri::HTML(open("https://www.wicprograms.org/ci/co-denver"))
        montbello_clinic_info = []
        url = doc.css(".span12")[2].css("a").attr("href").text
        address_phone = doc.css(".span12")[2].css("p")[0].text.strip.gsub("\r\n", "")
        montbello_clinic_info << url
        montbello_clinic_info << address_phone
        montbello_clinic_info
    end

    def self.scrape_northbroadway_clinic
        doc = Nokogiri::HTML(open("https://www.wicprograms.org/ci/co-denver"))
        northbroadway_clinic_info = []
        url = doc.css(".span12")[3].css("a").attr("href").text
        address_phone = doc.css(".span12")[3].css("p")[0].text.strip.gsub("\r\n", "")
        northbroadway_clinic_info << url
        northbroadway_clinic_info << address_phone
        northbroadway_clinic_info
    end

    def self.scrape_dphe_clinic
        doc = Nokogiri::HTML(open("https://www.wicprograms.org/ci/co-denver"))
        dphe_clinic_info = []
        url = doc.css(".span12")[4].css("a").attr("href").text
        address_phone = doc.css(".span12")[4].css("p")[0].text.strip.gsub("\r\n", "")
        dphe_clinic_info << url
        dphe_clinic_info << address_phone
        dphe_clinic_info
    end

    def self.scrape_westside_clinic
        doc = Nokogiri::HTML(open("https://www.wicprograms.org/ci/co-denver"))
        westside_clinic_info = []
        url = doc.css(".span12")[5].css("a").attr("href").text
        address_phone = doc.css(".span12")[5].css("p")[0].text.strip.gsub("\r\n", "")
        westside_clinic_info << url
        westside_clinic_info << address_phone
        westside_clinic_info
    end
end
