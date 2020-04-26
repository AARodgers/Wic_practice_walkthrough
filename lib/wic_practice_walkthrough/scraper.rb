require 'pry'

class Scraper

  def get_page
    Nokogiri::HTML(open("https://www.wicprograms.org/ci/co-denver"))
  end

  def get_clinics
    self.get_page.css(".span12")
  end

  def make_clinics
    self.get_clinics.each do |clinic_info|
      clinic = WicPracticeWalkthrough::Clinics.new
      clinic.title = clinic_info.css("h2").first.text
      clinic.url = clinic_info.css("a").attr("href").text
      clinic.address_phone = clinic_info.css("p")[0].text.strip.gsub("/r/n", "").strip
    end
  end

  def print_clinics
    self.make_clinics
    WicPracticeWalkthrough::Clinics.all.each do |clinic|
      if clinic.title && clinic.title != ""
        puts "Clinic Name: #{clinic.title}"
        puts "  Website: #{clinic.url}"
        puts "  Address and Phone: #{clinic.address_phone}"
      end
    end
  end
end
