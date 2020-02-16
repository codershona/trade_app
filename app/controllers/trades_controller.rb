class TradesController < ApplicationController

  before_action :set_trade, only: [:show, :edit, :update, :destroy]


  before_action :authenticate_user!, except: [:index, :show]

  
  
  def index
    @trades = Trade.all

  # @trades = Trade.all.order("created_at DESC")
   
  end

  def new
    @trade = Trade.new
    # @trade.user = current_user
  end

 
  def show
   # @trade = Trade.find(params[:id])
  end

 
  def edit
  end



   def create
    @trade = Trade.new(trade_params)
    @trade = current_user
     # @trade.user = current_user

    if @trade.save

  flash[:success] = "Trade has been successfully created"

    redirect_to trades_path(@trade)
    
    else
  render 'new'
      end
  end


   # @profile = Profile.new(:user_id => @user.id)

  # @user.build_profile
  # @user.create_profile


  # def create
  #     @trade = Trade.new(trade_params)
  #     @trade = current_user
  #  respond_to do |format|
  #     if @trade.save
  #       format.html { redirect_to trades_path(@trades), notice: 'Trade was successfully created.' }
  #       format.json { render :show, status: :created, location: @trade }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @trade.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  

  def update
        
        if @trade.update(trade_params)
       flash[:success] = "Your account has been updated successfully."
        redirect_to trades_path
        else
          render 'edit'
        end
  end

  #   def update
  #   respond_to do |format|
  #     if @trade.update(trade_params)
  #       format.html { redirect_to @trade, notice: 'Trade was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @trade }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @trade.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # def destroy
  #   @trade.destroy
  #   respond_to do |format|
  #     format.html { redirect_to trades_url, notice: 'Trade was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private


  
    def set_trade
      @trade = Trade.find(params[:id])

    end

   
    def trade_params
      params.require(:trade).permit(:title, :description, :user_id, images: [])
    end
end
