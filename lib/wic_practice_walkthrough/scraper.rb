require 'pry'

class Scraper
    # attr_accessor :doc, :clinic

    # def initialize
    #   @clinic = WicPracticeWalkthrough::Clinics.new
    #   @doc = Nokogiri::HTML(open("https://www.wicprograms.org/ci/co-denver"))
    # end

    def get_page
        doc = Nokogiri::HTML(open("https://www.wicprograms.org/ci/co-denver"))
    end

    def clinic_objects
        doc = Nokogiri::HTML(open("https://www.wicprograms.org/ci/co-denver"))
          doc.css(".span12").each do |object|
            clinic = WicPracticeWalkthrough::Clinics.new
            clinic.url = doc.css(".span12").css("a").attr("href").text
            clinic.address_phone = doc.css(".span12").css("p")[0].text.strip.gsub("\r\n", "")
            binding.pry
        end
    end
end
