class WelcomeController < ApplicationController
  
  def sendmessage
    if params[:name].blank? || params[:email].blank? || params[:message].blank?
      @error = "Tots els camps són obligatoris"
      render :contacte
    else
      Contact.send_mail(params[:name], params[:email], params[:message]).deliver_now
      redirect_to contacte_url, notice: "Missatge enviat!"
    end
  end

  def contacte

  end

  def qui_som

  end

  def gimnastica_hipopressiva

  end

  def readaptacio_esportiva

  end

  def tractaments

  end

  def terapia_manual

  end

  def drenatge_limfatic

  end

  def reeducacio

  end

  def articulacio

  end

  def puncio

  end

  def miofascials

  end

  def estiraments

  end

  def preparacio_part

  end

  def post_part

  end

  def massatge

  end

end
