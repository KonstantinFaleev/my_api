class MonkeysController < ApplicationController
  before_action :set_monkey, only: [:show, :update, :destroy]

  # GET /monkeys
  # GET /monkeys.json
  def index
    @monkeys = Monkey.all
  end

  # GET /monkeys/1
  # GET /monkeys/1.json
  def show
  end

  # POST /monkeys
  # POST /monkeys.json
  def create
    @monkey = Monkey.new(monkey_params)

    if @monkey.save
      render :show, status: :created, location: @monkey
    else
      render json: @monkey.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /monkeys/1
  # PATCH/PUT /monkeys/1.json
  def update
    if @monkey.update(monkey_params)
      render :show, status: :ok, location: @monkey
    else
      render json: @monkey.errors, status: :unprocessable_entity
    end
  end

  # DELETE /monkeys/1
  # DELETE /monkeys/1.json
  def destroy
    @monkey.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_monkey
      @monkey = Monkey.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def monkey_params
      params.fetch(:monkey, {})
    end
end
