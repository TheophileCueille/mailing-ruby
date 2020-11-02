class UserMailer < ApplicationMailer
    default from: 'no-reply@monsite.fr'
   
    def welcome_email(user)
    @url  = 'http://monsite.fr/login' 
    @user = user
    @tuto_url = 'https://www.youtube.com/watch?v=FOzORZ-ch7c&t=512s&ab_channel=Grafikart.fr'
      # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
      mail(to: @user.email, subject: 'Bienvenue chez nous !') 
    end
  end