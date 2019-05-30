class OnTaraf::OyundetayController < ApplicationController
  def index
      @oyun = Oyun.find(params[:id])
     
  end
end
