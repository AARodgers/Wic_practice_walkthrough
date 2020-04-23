require 'pry'

class Scraper
    # attr_accessor :doc, :clinic

    # def initialize
    #   @clinic = WicPracticeWalkthrough::Clinics.new
    #   @doc = Nokogiri::HTML(open("https://www.wicprograms.org/ci/co-denver"))
    # end

    def test_scraping
        @doc = Nokogiri::HTML(open("https://www.wicprograms.org/ci/co-denver"))
        @doc
    end

    def clinic_objects
        @doc.css(".span12")
    end
end
