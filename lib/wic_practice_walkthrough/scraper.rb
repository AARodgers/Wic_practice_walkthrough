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


    # def scrape_clinics
    #     @doc = Nokogiri::HTML(open("https://www.wicprograms.org/ci/co-denver"))
    #     clinic_info = @doc.css("span9 bg-dark")
    #     clinic_info
    #     binding.pry
    # end

    # def scrape_articles
    #     @doc = Nokogiri::HTML(open("http://techcrunch.com"))
    #     @doc.search("li.river-block").each do |article_li|
    #       story = TechcrunchCli::Story.new

    #       a_tag = article_li.search("h2 a")
    #       if a_tag
    #         # begin
    #           story.url = a_tag.attr("href").text
    #         # rescue NoMethodError
    #           # binding.pry
    #         # end
    #         story.title = article_li.search("h2").text
    #         story.author = article_li.search("div.byline").text
    #         story.summary = article_li.search("p.excerpt").text

    #         story.save
    #       end


    # def class_running?
    #     puts "i'm running"
    # end
end
