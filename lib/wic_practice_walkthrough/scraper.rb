class Scraper
    attr_accessor :doc, :clinic

    puts "i'm running"

    def initialize
      @clinic = WicPracticeWalkthrough::Clinics.new
      @doc = Nokogiri::HTML(open("https://www.wicprograms.org/ci/co-denver"))
    end

    def scrape_clinics
      puts "works"
    end
end
