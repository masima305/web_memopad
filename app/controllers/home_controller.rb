class HomeController < ApplicationController
  def index
   
   
   namelist = Name.new
   @name = Name.uname
  
  end
end
