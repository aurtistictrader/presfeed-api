class ObserversController < ApplicationController
  before_action :set_observer, only: [:show, :update, :destroy]
  before_filter :parse_request

  # GET /observers
  # GET /observers.json
  def index
    @observers = Observer.all

    render json: @observers
  end

  # GET /observers/1
  # GET /observers/1.json
  def show
    render json: @observer
  end

  # POST /observers
  # POST /observers.json
  def create
    @observer = Observer.new(observer_params)

    if @observer.save
      render json: @observer, status: :created, location: @observer
    else
      render json: @observer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /observers/1
  # PATCH/PUT /observers/1.json
  def update
    @observer = Observer.find(params[:id])

    if @observer.update(observer_params)
      head :no_content
    else
      render json: @observer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /observers/1
  # DELETE /observers/1.json
  def destroy
    @observer.destroy

    head :no_content
  end

  private

    def set_observer
      @observer = Observer.find(params[:id])
    end

    def observer_params
      params.require(:observer).permit(:presenter_id, :status)
    end
end
