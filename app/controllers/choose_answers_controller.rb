class ChooseAnswersController < ApplicationController
  before_action :set_choose_answer, only: [:show, :edit, :update, :destroy]

  # GET /choose_answers
  # GET /choose_answers.json
  def index
    @choose_answers = ChooseAnswer.all
  end

  # GET /choose_answers/1
  # GET /choose_answers/1.json
  def show
  end

  # GET /choose_answers/new
  def new
    @choose_answer = ChooseAnswer.new
  end

  # GET /choose_answers/1/edit
  def edit
  end

  # POST /choose_answers
  # POST /choose_answers.json
  def create
    @choose_answer = ChooseAnswer.new(choose_answer_params)

    respond_to do |format|
      if @choose_answer.save
        format.html { redirect_to @choose_answer, notice: 'Choose answer was successfully created.' }
        format.json { render :show, status: :created, location: @choose_answer }
      else
        format.html { render :new }
        format.json { render json: @choose_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /choose_answers/1
  # PATCH/PUT /choose_answers/1.json
  def update
    respond_to do |format|
      if @choose_answer.update(choose_answer_params)
        format.html { redirect_to @choose_answer, notice: 'Choose answer was successfully updated.' }
        format.json { render :show, status: :ok, location: @choose_answer }
      else
        format.html { render :edit }
        format.json { render json: @choose_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /choose_answers/1
  # DELETE /choose_answers/1.json
  def destroy
    @choose_answer.destroy
    respond_to do |format|
      format.html { redirect_to choose_answers_url, notice: 'Choose answer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_choose_answer
      @choose_answer = ChooseAnswer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def choose_answer_params
      params.require(:choose_answer).permit(:title, :body)
    end
end
