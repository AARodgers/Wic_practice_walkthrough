class WicPracticeWalkthrough::Clinics
    # Scrapes and returns a clinic's: address, url, and phone number.
    def self.scrape_clinic_info(clinic_number)
        doc = Nokogiri::HTML(open("https://www.wicprograms.org/ci/co-denver"))
        clinic_info = []
        url = doc.css(".span12")[clinic_number].css("a").attr("href").text
        address_phone = doc.css(".span12")[clinic_number].css("p")[0].text.strip.gsub("\r\n", "")
        clinic_info << url
        clinic_info << address_phone
        clinic_info
    end
end
