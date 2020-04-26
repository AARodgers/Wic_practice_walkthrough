require 'pry'

class Scraper

    def get_page
        doc = Nokogiri::HTML(open("https://www.wicprograms.org/ci/co-denver"))
        binding.pry
    end

    # def clinic_objects
    #     @doc = Nokogiri::HTML(open("https://www.wicprograms.org/ci/co-denver"))
    #       @doc.css(".span12").each do |clinic_objects|
    #         binding.pry
    #         clinic = WicPracticeWalkthrough::Clinics.new
    #         clinic.url = clinic_objects.css(".span12").css("a").attr("href").text
    #         clinic.address_phone = clinic_objects.css(".span12").css("p").text.strip.gsub("\r\n", "")
    #         clinic.title = clinic_objects.css("h2").first.text
    # for title, this gives all of the titles written together: b.css("h2").css("a").text
    #     end
    # end
end

Scraper.new.get_page
