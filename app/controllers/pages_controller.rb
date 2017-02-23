class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]


  def home
    @weapons = []
    User.all.each do |killer|
      @weapons << killer.weapons
    end
  end
end
