
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
