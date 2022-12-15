class CheesesController < ApplicationController

  def index
    cheeses = Cheese.all
    render json: cheeses
  end

  def show
    
    #find a cheese using id from url 
    #send json response using that cheese object 
    #to access special information as part of this dynamic route and that's params 
    cheese = Cheese.find_by(id: params[:id])
    render json: cheese
  end 

end
