Denver Health WIC Clinics:
https://www.wicprograms.org/ci/co-denver

doc = Nokogiri::HTML(open("https://www.wicprograms.org/ci/co-denver"))

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
Site: https://www.coloradowic.gov/find-wic-clinic
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