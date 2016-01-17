class PresentersController < ApplicationController
  before_action :set_presenter, only: [:show, :update, :destroy]

  # GET /presenters
  # GET /presenters.json
  def index
    @presenters = Presenter.all

    render json: @presenters
  end

  # GET /presenters/1
  # GET /presenters/1.json
  def show
    render json: @presenter
  end

  # POST /presenters
  # POST /presenters.json
  def create
    @presenter = Presenter.new(presenter_params)

    if @presenter.save
      render json: @presenter, status: :created, location: @presenter
    else
      render json: @presenter.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /presenters/1
  # PATCH/PUT /presenters/1.json
  def update
    @presenter = Presenter.find(params[:id])

    if @presenter.update(presenter_params)
      head :no_content
    else
      render json: @presenter.errors, status: :unprocessable_entity
    end
  end

  # DELETE /presenters/1
  # DELETE /presenters/1.json
  def destroy
    @presenter.observers.destroy_all
    @presenter.destroy

    head :no_content
  end

  private

    def set_presenter
      @presenter = Presenter.find(params[:id])
    end

    def presenter_params
      params[:presenter]
    end
end
