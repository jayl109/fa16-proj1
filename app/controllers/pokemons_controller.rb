class PokemonsController < ApplicationController
	def capture
		p = Pokemon.find(params[:id])
		p.trainer=current_trainer
		p.save

		redirect_to "/"
	end
	def damage
		p = Pokemon.find(params[:id])
		p.health=p.health-10
		p.save
		puts"here"
		if p.health<=0
			p.destroy
			p.save
		end


		redirect_to "/trainers/"+p.trainer_id.to_s
	end
	def new
		@newpoke=Pokemon.new()
		print('here')
	end
	def create
		print("ajasdfja;")
		print(@newpoke)
		print(params[:name])
		p=Pokemon.create(name: params[:pokemon][:name], level: 1, health: 100)
		
		p.trainer=current_trainer
		if p.valid?
			p.save
		

			redirect_to "/trainers/"+current_trainer.id.to_s 

		else
			flash[:error] = p.errors.full_messages.to_sentence
			print("hereSJDKLF:J:DF")
			redirect_to "/new"
		end
	end
end
