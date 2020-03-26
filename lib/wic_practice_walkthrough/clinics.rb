class WicPracticeWalkthrough::Clinics
    attr_accessor :name, :address, :hours, :url

    def self.all_clinics
        puts "this will be a list of all clinics"

        clinic_1 = Clinics.new
        clinic_1.name = "Alamosa WIC Clinic"
        clinic_1.address = "128 Market Street, Alamosa CO 81101"
        clinic_1.hours = "M-F 8:30am - 5pm"
        clinic_1.url = "https://vwhs.org/special-programs/women-infants-children-wic/"

        clinic_2 = Clinics.new
        clinic_2.name = "Antonito WIC Clinic"
        clinic_2.address = "10th Street &amp; Dahlia, Guadalupe Health Center, Antonito CO 81120"
        clinic_2.hours = "M-F 8:30am - 5pm"
        clinic_2.url = "10th Street, Guadalupe Health Center, Antonito CO 81120"

        [clinic_1, clinic_2]
    end


end
