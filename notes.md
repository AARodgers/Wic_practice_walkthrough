
this is to show version2 branch changes


Denver Health WIC Clinics:
https://www.wicprograms.org/ci/co-denver


this is the first nokogiri info for first clinci = doc.css(".span12").first

Lowery Family Health Center
all_info = doc.css(".span12").first.css("p").text.strip
all_info2 =  @lowry_clinic_info = doc.css(".span12").first.css("p").text.strip
name = doc.css(".span12").first.css("h2").text
url: doc.css(".span12").first.css("a").attr("href").text
phone, address, hours and description: doc.css(".span12").first.css("p").children.text.strip
address and phone: doc.css(".span12").first.css("p")[0].text.strip.gsub("\r\n", "")


To Do:
- system clear after input
-put exit option after Get more info and clinic options




CLI - Welcomes user to Denver WIC Clinic app.
    It ask user to select:
        'list' for a list of all clinics
        'more info about WIC
        exit
(USER PICKS AN OPTION)
        More info about WIC =>
            paragraph about WIC
        List =>
            will list all clinics
                Ask user to select a clinc for more information. (USER SELECTS A CLINIC)
                Clinic information comes up including:

the clinics scraped:

 # def self.scrape_lowry_clinic
    #     doc = Nokogiri::HTML(open("https://www.wicprograms.org/ci/co-denver"))
    #     lowry_clinic_info = []
    #     url = doc.css(".span12").first.css("a").attr("href").text
    #     address_phone = doc.css(".span12").first.css("p")[0].text.strip.gsub("\r\n", "")
    #     lowry_clinic_info << url
    #     lowry_clinic_info << address_phone
    #     lowry_clinic_info
    # end

    # def self.scrape_eastside_clinic
    #     doc = Nokogiri::HTML(open("https://www.wicprograms.org/ci/co-denver"))
    #     eastside_clinic_info = []
    #     url = doc.css(".span12")[1].css("a").attr("href").text
    #     address_phone = doc.css(".span12")[1].css("p")[0].text.strip.gsub("\r\n", "")
    #     eastside_clinic_info << url
    #     eastside_clinic_info << address_phone
    #     eastside_clinic_info
    # end

    # def self.scrape_montbello_clinic
    #     doc = Nokogiri::HTML(open("https://www.wicprograms.org/ci/co-denver"))
    #     montbello_clinic_info = []
    #     url = doc.css(".span12")[2].css("a").attr("href").text
    #     address_phone = doc.css(".span12")[2].css("p")[0].text.strip.gsub("\r\n", "")
    #     montbello_clinic_info << url
    #     montbello_clinic_info << address_phone
    #     montbello_clinic_info
    # end

    # def self.scrape_northbroadway_clinic
    #     doc = Nokogiri::HTML(open("https://www.wicprograms.org/ci/co-denver"))
    #     northbroadway_clinic_info = []
    #     url = doc.css(".span12")[3].css("a").attr("href").text
    #     address_phone = doc.css(".span12")[3].css("p")[0].text.strip.gsub("\r\n", "")
    #     northbroadway_clinic_info << url
    #     northbroadway_clinic_info << address_phone
    #     northbroadway_clinic_info
    # end

    # def self.scrape_dphe_clinic
    #     doc = Nokogiri::HTML(open("https://www.wicprograms.org/ci/co-denver"))
    #     dphe_clinic_info = []
    #     url = doc.css(".span12")[4].css("a").attr("href").text
    #     address_phone = doc.css(".span12")[4].css("p")[0].text.strip.gsub("\r\n", "")
    #     dphe_clinic_info << url
    #     dphe_clinic_info << address_phone
    #     dphe_clinic_info
    # end

    # def self.scrape_westside_clinic
    #     doc = Nokogiri::HTML(open("https://www.wicprograms.org/ci/co-denver"))
    #     westside_clinic_info = []
    #     url = doc.css(".span12")[5].css("a").attr("href").text
    #     address_phone = doc.css(".span12")[5].css("p")[0].text.strip.gsub("\r\n", "")
    #     westside_clinic_info << url
    #     westside_clinic_info << address_phone
    #     westside_clinic_info
    # end










===============================================================================================================

SOME CODE:
Site:
For titles but only goes to Bailey???:
doc = Nokogiri::HTML(open("https://www.coloradowic.gov/find-wic-clinic"))

wic_clinic_names = doc.css(".view__row").css(".teaser--clinic__title").text
puts wic_clinic_names

Wic_clinic_address =

wic_clinic_address = doc.css(".teaser--clinic__bottom-left").css("span").text
puts wic_clinic_address

Wic_clinic_hours =
wic_clinic_hours = doc.css(".teaser--clinic__hours-of-operation").first.css("p").text

Wic_clinic_url =
wic_clinic_url = doc.css(".teaser__link").first.attr("href")
puts wic_clinic_url


wic_clinic_google_maps = doc.css(".teaser--clinic__link").first.attr("href")
puts wic_clinic_google_maps

Wic_clinic_phone =
wic_clinic_phone = doc.css(".teaser--clinic__phone").text

Debugging Technique:
 doc = Nokogiri::HTML(open("https://www.wicprograms.org/ci/co-denver"))
    doc.css(".span12").each do |clinic_info|
      clinic = WicPracticeWalkthrough::Clinics.new
      clinic.title = clinic_info.css("h2").first.text

      clinic.url = clinic_objects.css(".span12").css("a").attr("href").text
      clinic.url = clinic_info.css("a").attr("href").text
      a = clinic_info # this is the span12 representing a clinic's info
      puts 'ITEM A:'
      puts a.inspect
      # b = a.css(".span12")
      # puts 'ITEM B:'
      # puts b.inspect
      c = a.css("a")
      puts 'ITEM C:'
      puts c.inspect
      d = c.attr("href")
      e = d.text

      clinic.address_phone = clinic_objects.css(".span12").css("p").text.strip.gsub("\r\n", "")
      binding.pry

      # def return_to_main_menu

<!-- #   return_options = prompt.select("Select Main Menu or More Information About WIC:", ["Main Menu", "More Information About WIC"])
#   case return_options
#   when "Main Menu"
#     system("clear")
#     call
#   when "More Information About WIC"
#     system("clear")
#     more_wic_info
#     return_to_main_menu
#   end
# end

# def return_to_only_main_menu
#   return_menu = prompt.select("Select to return to main menu:", ["Main Menu"])
#   case return_menu
#   when "Main Menu"
#     call
#   end
# end

# def more_wic_info
#   puts "WIC: The Special Supplemental Nutrition Program for Women, Infants, and Children (WIC) is a nutrition program that provides nutritious groceries, nutrition education, breastfeeding support and other services free of charge to Colorado families who qualify. WIC’s goal is to help keep pregnant and breastfeeding women and children under age 5 healthy."
# end

# def select_option
#   input = prompt.select("Please select an option:", ["See a list of Denver WIC Clincs", "Get more information about WIC", "Exit"])
#   case input
#   when "See a list of Denver WIC Clincs"
#     list_of_all_clinics
#   when "Get more information about WIC"
#     more_wic_info
#     puts ""
#     return_to_only_main_menu
#   when "Exit"
#     goodbye
#   end
# end

# def list_of_all_clinics
#   puts "test for clinic object"
#   clinic_info = prompt.select("Please pick a clinic for more information or exit:", ["Lowry Family Health Center WIC Clinic", "Eastside Neighborhood Health Center", "Montbello WIC Clinic", "North Broadway Wic Clinic", "Colorado Department of Public Health & Environment", "Westside Family Health Center WIC Clinic", "Exit"])
#   case clinic_info
#   when "Lowry Family Health Center WIC Clinic"
#     system("clear")
#     puts "Lowry Family Health Center WIC Clinic Info:"
#     puts ""
#     puts WicPracticeWalkthrough::Clinics.scrape_lowry_clinic
#     puts ""
#     return_to_main_menu
#   when "Eastside Neighborhood Health Center"
#     system("clear")
#     puts "Eastside Neighborhood Health Center Info:"
#     puts ""
#     puts WicPracticeWalkthrough::Clinics.scrape_eastside_clinic
#     puts ""
#     return_to_main_menu
#   when "Montbello WIC Clinic"
#     system("clear")
#     puts "Montbello WIC Clinic Info:"
#     puts ""
#     puts  WicPracticeWalkthrough::Clinics.scrape_montbello_clinic
#     puts ""
#     return_to_main_menu
#   when "North Broadway Wic Clinic"
#     puts ""
#     system("clear")
#     puts  "North Broadway Wic Clinic Info:"
#     puts  WicPracticeWalkthrough::Clinics.scrape_northbroadway_clinic
#     puts ""
#     return_to_main_menu
#   when "Colorado Department of Public Health & Environment"
#     system("clear")
#     puts  "Colorado Department of Public Health & Environment Info:"
#     puts ""
#     puts  WicPracticeWalkthrough::Clinics.scrape_dphe_clinic
#     puts ""
#     return_to_main_menu
#   when "Westside Family Health Center WIC Clinic"
#     system("clear")
#     puts  "Westside Family Health Center WIC Clinic Info:"
#     puts ""
#     puts WicPracticeWalkthrough::Clinics.scrape_westside_clinic
#     puts ""
#     return_to_main_menu
#   when "Exit"
#     goodbye
#   end
# end

# def goodbye
#   puts ""
#   puts "Have a Great Day and go to Eatright.org to get more information about Healthy Eating!"
# end -->
