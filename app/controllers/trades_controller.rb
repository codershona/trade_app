class TradesController < ApplicationController

  before_action :set_trade, only: [:show, :edit, :update, :destroy]


  before_action :authenticate_user!, except: [:index, :show]

  
  # GET /trades
  # GET /trades.json
  def index
    # @trades = Trade.all

  @trades = Trade.all.order("created_at DESC")
   
  end

  def new
    @trade = Trade.new
  end

  # GET /trades/1
  # GET /trades/1.json
  def show
   # @trade = Trade.find(params[:trade_id])
  end

  # GET /trades/new



  # GET /trades/1/edit
  def edit
  end

  # POST /trades
  # POST /trades.json


  #  def create
  #   @trade = Trade.new(trade_params)
  #   @trade = current_user
  #   if @trade.save
  #     flash[:success] = "Trade has been successfully created"
  #   redirect_to trade_path(@trade)
  #   # redirect_to @trade
  #   else
  # render 'new'
  #     end
  # end


   # @profile = Profile.new(:user_id => @user.id)

  # @user.build_profile
  # @user.create_profile


  def create
      @trade = Trade.new(trade_params)
      @trade = current_user
   respond_to do |format|
      if @trade.save
        format.html { redirect_to trade_path(@trade), notice: 'Trade was successfully created.' }
        format.json { render :show, status: :created, location: @trade }
      else
        format.html { render :new }
        format.json { render json: @trade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trades/1
  # PATCH/PUT /trades/1.json
  # def update
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

  def update
        
        if @trade.update(trade_params)
       flash[:success] = "Your account has been updated successfully."
        redirect_to trades_path
        else
          render 'edit'
        end
  end

  # DELETE /trades/1
  # DELETE /trades/1.json
  def destroy
    @trade.destroy
    respond_to do |format|
      format.html { redirect_to trades_url, notice: 'Trade was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private


    # Use callbacks to share common setup or constraints between actions.
    def set_trade
      @trade = Trade.find(params[:id])

   # @trade = current_user.trades.friendly.find(params[:id]) 
      # Article.find(params[:id]).update_attributes(article_params)
       # @trade = Trade.find(params[:user_id])
    end

    # Only allow a list of trusted parameters through.
    def trade_params
      params.require(:trade).permit(:title, :description, :user_id, images: [])
    end
end
