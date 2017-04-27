class ClientArea::OrdersController < ApplicationController
  before_action :set_client_area_order, only: [:show, :edit, :update, :destroy]

  # GET /client_area/orders
  # GET /client_area/orders.json
  def index
    @client_area_orders = ClientArea::Order.all
  end

  # GET /client_area/orders/1
  # GET /client_area/orders/1.json
  def show
  end

  # GET /client_area/orders/new
  def new
    @client_area_order = ClientArea::Order.new
  end

  # GET /client_area/orders/1/edit
  def edit
  end

  # POST /client_area/orders
  # POST /client_area/orders.json
  def create
    @client_area_order = ClientArea::Order.new(client_area_order_params)

    respond_to do |format|
      if @client_area_order.save
        format.html { redirect_to @client_area_order, notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @client_area_order }
      else
        format.html { render :new }
        format.json { render json: @client_area_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /client_area/orders/1
  # PATCH/PUT /client_area/orders/1.json
  def update
    respond_to do |format|
      if @client_area_order.update(client_area_order_params)
        format.html { redirect_to @client_area_order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @client_area_order }
      else
        format.html { render :edit }
        format.json { render json: @client_area_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /client_area/orders/1
  # DELETE /client_area/orders/1.json
  def destroy
    @client_area_order.destroy
    respond_to do |format|
      format.html { redirect_to client_area_orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client_area_order
      @client_area_order = ClientArea::Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def client_area_order_params
      params.fetch(:client_area_order, {})
    end
end
