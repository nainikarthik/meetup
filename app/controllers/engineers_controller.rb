class EngineersController < ApplicationController
	def index
	  @engineers = Engineer.order(:name)
	end

	def new
	  @engineer = Engineer.new
	end

	def create
	  if @engineer = Engineer.create(params[:engineer])
        redirect_to engineers_path, notice: "Engineer added!"
      else
        render action::new
      end
	end

	def edit
	  @engineer = Engineer.find(params[:id])
	end

	def update
	  @engineer = Engineer.find(params[:id])
	  if @engineer.update_attributes(params[:engineer])
        redirect_to engineers_path, notice: "#{@engineer.name} Engineer successfully updated."
      else
        render :edit, notice: "Error updating the Engineer"
      end
	end

	def show
	  @engineer = Engineer.find(params[:id])
	end

	def destroy
	  @engineer = Engineer.find(params[:id])
      @engineer.destroy
    
      redirect_to engineers_path, notice: "Engineer deleted."
    end
end