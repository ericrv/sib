class Contact < ApplicationMailer
	def send_mail(name, email, text)
		@name = name
		@email = email
		@message = text
		mail(to: "eric@davidrv.com", subject: "Nou missatge des de la web de #{name}", from: "web@sibfisioterapia.com")
	end
end
