# require "tty-prompt"

class WicPracticeWalkthrough::CLI

  attr_reader :prompt

  def call
    welcome
    select_option
    # list_of_all_clinics
  end

  def initialize
    @prompt = TTY::Prompt.new
  end

  def welcome
    puts "Welcome to the Denver Health WIC Clinics App! "
  end

  def select_option
    input = prompt.select("Please select an option:", ["See a list of Denver WIC Clincs", "Get more information about WIC", "Exit"])
    case input
    when "See a list of Denver WIC Clincs"
      list_of_all_clinics
    when "Get more information about WIC"
      puts "info about wic"
    when "Exit"
      goodbye
    end
  end

  def list_of_all_clinics
    clinic_info = prompt.select("Please pick a clinic for more information or exit:", ["Lowry Family Health Center WIC Clinic", "Eastside Neighborhood Health Center", "Montbello WIC Clinic", "North Broadway Wic Clinic", "North Broadway Wic Clinic", "Colorado Department of Public Health & Environment", "Westside Family Health Center WIC Clinic", "Exit"])
    case clinic_info
    when "Lowry Family Health Center WIC Clinic"
      puts WicPracticeWalkthrough::Clinics.scrape_lowry_clinic
    when "Exit"
      goodbye
    end
  end


  def goodbye
    puts "Have a Great Day and go to Eatright.org to get more information about healthy eating!"
  end
end

  # if "See a list of Denver WIC Clincs"
  #   puts "A list of all wic clincis"
  # elsif "Get more information about WIC"
  #   puts "more info about wic"
  # elsif "Exit"
  #   goodbye
  # else
  #   select_option
  # end

  # def user_selection
  #   users_selection = select_option
  #   case users_selection
  #   when "See a list of Denver WIC Clincs"
  #       puts "List of all WIC Clinic names"
  #   when  "Get more information about WIC"
  #       puts "paragraph about WIC"
  #   when "Exit"
  #       goodbye
  #   end
  # end


#   def list_all_clinics
# #     #fake data will use scrape
#     puts "Welcome to the Denver WIC Clinics App: "
# #     puts <<-DOC.gsub /^\s+/, ''
# #         1. Alamosa WIC Clinic 2. Antoninto WIC Clinic
# #     DOC
#     @clinics = WicPracticeWalkthrough::Clinics.all_clinics
#   end

#   def menu
#     puts "Welcome to the Denver Health WIC Clinics App: "
#     puts "Please select an option:  "
#     input = nil
#     while input != "exit"
#         input = gets.strip.downcase

#         # if input.to_i > 0
#         #   puts @clinics[input.to_i-1]
#         # elsif input == "list"
#         #     list_all_clinics
#         # else
#         #     puts "Not sure what you want: type list or exit"
#         # end

#         case input
#         when "81101"
#             puts "All clinics with zip code 81101"
#         when "81120"
#             puts "All clinics with zip code 81120"
#         when "list"
#             puts "A list of all of the Colorado Clinics"
#         when "exit"
#             goodbye
#         end
#     end
#   end
