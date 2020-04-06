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
