class TrainersController < ApplicationController
  before_filter :authenticate_trainer!

  def index
    @trainers = Trainer.all
  end

  def show
    @trainer = Trainer.find(params[:id])
  end
  def update
  	pokemon = Pokemon.create(name: "test", level: 1, health: 100)
  	puts params[:name]
  	puts params[:input]
  	puts "HI"
	pokemon.trainer=current_trainer
	
	pokemon.save
	redirect_to "/trainers/"+current_trainer.id.to_s

  end

end
