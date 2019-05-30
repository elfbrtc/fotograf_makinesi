class OnTaraf::AnasayfaController < ApplicationController
  def index
      @oyunlar=Oyun.all
  end
end
