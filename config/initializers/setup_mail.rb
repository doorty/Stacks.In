ActionMailer::Base.smtp_settings = {
	:address              => "smtp.gmail.com",
	:port                 => 587,
	:user_name            => "contact@stacks.in",
	:password             => 'password',
	:authentication       => "plain",
	:enable_starttls_auto => true
 }
=begin
 ActionMailer::Base.smtp_settings = {
  :user_name => "doorty",
  :password => "tennis49ball",
  :domain => "stacks.in",
  :address => "smtp.sendgrid.net",
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}
=end

