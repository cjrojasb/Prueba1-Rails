class PagesController < ApplicationController
  def batman
  end

  def superman
  end

  def batman_vs_superman
    @batman_votes = VotosBatman.count
    @superman_votes = VotosSuperman.count
  end

  def save_vote_batman
    if params[:name].present? && params[:email].present? 
      VotosBatman.create(name:params[:name], email:params[:email])
      redirect_to pages_batman_vs_superman_path, notice: "Has votado por Batman!"
    else
      redirect_to pages_batman_vs_superman_path, alert: "Error, debes completar todos los campos"
    end
  end

  def save_vote_superman
    if params[:name].present? && params[:email].present?
      VotosSuperman.create(name:params[:name], email:params[:email])
      redirect_to pages_batman_vs_superman_path, notice: "Has votado por Superman!"
    else
      redirect_to pages_batman_vs_superman_path, alert: "Error, debes completar todos los campos"
    end
  end
end
