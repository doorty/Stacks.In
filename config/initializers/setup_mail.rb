ActionMailer::Base.smtp_settings = {
	:address								=> "smtp.gmail.com",
	:port										=> 587,
	:domain									=> "stacks.in",
	:user_name							=> "contact",
	:password								=> "password",
	:authentication					=> "plain",
	:enable_starttls_auto		=> true
}