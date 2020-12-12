# TODO for each repo
- [x] Rename repos to something short and clean: all lowercase, underscores, keep it concise
  - [x] Teachers app -> teacher_organizer
  - [x] CLI APP Wic Clinic Finder -> wic_clinic_finder
- [x] Write description for repo in About section
- [ ] Write README
- [x] Add LICENSE file
- [x] Make sure license appears in About section properly
- [ ] Clean repo of unused/useless/incorrect files
- [ ] Lint all files with [RuboCop](https://rubocop.org/)
  - [ ] Fix all discovered issues with `rubocop --fix` and manual intervention
  - [ ] Commit all fixes
- [ ] Run application from scratch, using the instructions from your README verbatim
  - [ ] Correct any issues with your README Getting Started section
- [ ] Document all major methods with comments
- [ ] Get rid of any TODO comments left lying around

# README for each repo
- [ ] Application name
- [ ] Description
  - [ ] Link to YouTube walkthrough
- [ ] Intent (who is this for? how will it help them?)
- [ ] Getting Started (installation)
- [ ] Usage
- [ ] Contributing
- [ ] License

# Teacher Organizer
- [ ] Audit every controller method
  - [ ] Add a comment to every controller method
  - [ ] Install [Sinatra Flash](https://github.com/SFEley/sinatra-flash)
  - [ ] Add flash messages to the head of every template
  - [ ] Replace all `if logged_in?` checks with guard-style `unless logged_in? redirect; flash; return` checks
- [ ] Document every model (one-line comments are fine)
- [ ] Fix up styling - modernize style, colors, fonts
- [ ] Re-record video with concise script

# WIC Clinic Finder
- [ ] Document your model class
- [ ] Review your use of `system("clear")` and remove redundant calls
- [ ] Get rid of all commented lines of code
- [ ] Instead of printing every clinic's info, first print the list of clinics, ask the user to select one, and print that clinic's info

# WicPracticeWalkthrough

This gem allows one to search WIC Clinics in Denver and to get their location, url and address.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'wic_practice_walkthrough'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install wic_practice_walkthrough

## Usage

Once the gem is installed, type ./bin/wic-clinics to start the application. The main menu will be prompted. Use your up and down arrows to select options.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/<github username>/wic_practice_walkthrough. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the WicPracticeWalkthrough project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/<github username>/wic_practice_walkthrough/blob/master/CODE_OF_CONDUCT.md).

