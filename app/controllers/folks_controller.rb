class FolksController < ApplicationController
  def index
    @folks = Folk.all
    end
  
    def new
      @folk = Folk.new
      render partial: 'form'
    end
  
    def show
      @folk = Folk.find(params[:id])
    end
    
  
    def create
      @folk = Folk.new(folk_params)
        if @folk.save
          redirect_to folks_path
        else
          render :new  
        end  
    end
  
    def edit
      @folk = Folk.find(params[:id])
      render partial: 'form'
    end
  
    def update
      @folk = Folk.find([:id])
        if @folk.update(folk_params)
          redirect_to folk_path
        else
          render :edit
        end
    end
  
    def destroy
      Folk.find(params[:id]).destroy
      redirect_to folks_path
    end
  

    private
      def folk_params
        params.require(:folk).permit(:attr, :name, :age, :hair_color, :eye_color, :gender, :alive)
      end
end

