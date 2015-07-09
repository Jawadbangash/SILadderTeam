# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!


ActionMailer::Base.smtp_settings = {
  :user_name => 'ladder',
  :password => 'LimaDeltaSG!777',
  :domain => 'ladderdigital.com',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}