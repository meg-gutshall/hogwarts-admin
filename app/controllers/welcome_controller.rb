class WelcomeController < ApplicationController
  def home
  end

  def cast_spell
    @thing = params[:phrase]
    render 'home'
  end
end
