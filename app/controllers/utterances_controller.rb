class UtterancesController < ApplicationController
  before_action :set_utterance, only: [:show, :edit, :update, :destroy]

  # GET /utterances
  # GET /utterances.json
  def index
    @utterances = Utterance.all
  end

  # GET /utterances/1
  # GET /utterances/1.json
  def show
  end

  # GET /utterances/new
  def new
    @utterance = Utterance.new
  end

  # GET /utterances/1/edit
  def edit
  end

  # POST /utterances
  # POST /utterances.json
  def create
    @utterance = Utterance.new(utterance_params)

    respond_to do |format|
      if @utterance.save
        format.html { redirect_to @utterance, notice: 'Utterance was successfully created.' }
        format.json { render :show, status: :created, location: @utterance }
      else
        format.html { render :new }
        format.json { render json: @utterance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /utterances/1
  # PATCH/PUT /utterances/1.json
  def update
    respond_to do |format|
      if @utterance.update(utterance_params)
        format.html { redirect_to @utterance, notice: 'Utterance was successfully updated.' }
        format.json { render :show, status: :ok, location: @utterance }
      else
        format.html { render :edit }
        format.json { render json: @utterance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /utterances/1
  # DELETE /utterances/1.json
  def destroy
    @utterance.destroy
    respond_to do |format|
      format.html { redirect_to utterances_url, notice: 'Utterance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_utterance
      @utterance = Utterance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def utterance_params
      params.require(:utterance).permit(:user_id, :project_id)
    end
end
