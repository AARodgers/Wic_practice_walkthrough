require 'pry'

class Scraper
  def get_page
    doc = Nokogiri::HTML(open("https://www.wicprograms.org/ci/co-denver"))
    doc.css(".span12").each do |clinic_info|
      clinic = WicPracticeWalkthrough::Clinics.new
      clinic.title = clinic_info.css("h2").first.text
      clinic.url = clinic_info.css("a").attr("href").text
      clinic.address_phone = clinic_info.css("p").text.strip.gsub("\r\n", "")
    end
  end
end
