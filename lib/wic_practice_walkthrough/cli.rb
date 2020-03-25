class WicPracticeWalkthrough::CLI

  def call
    menu
  end

#   def list_all_clinics
#     #fake data will use scrape
#     puts "Welcome to the Colorado WIC Clinics App: "
#     puts <<-DOC.gsub /^\s+/, ''
#         1. Alamosa WIC Clinic 2. Antoninto WIC Clinic
#     DOC
#   end

  def menu
    puts "Welcome to the Colorado WIC Clinics App: "
    puts "Enter your zip code to find WIC Clinics in your area or list to see a list of all Colorado WIC Clinics or exit: "
    input = nil
    while input != "exit"
        input = gets.strip.downcase
        case input
        when "81101"
            puts "All clinics with zip code 81101"
        when "81120"
            puts "All clinics with zip code 81120"
        when "list"
            puts "A list of all of the Colorado Clinics"
        when "exit"
            goodbye
        end
    end
  end

  def goodbye
    puts "Have a Great Day and go to Eatright.org to get more information about healthy eating!"
  end
end
