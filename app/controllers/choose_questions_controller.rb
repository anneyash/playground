class ChooseQuestionsController < ApplicationController
  before_action :set_choose_question, only: [:show, :edit, :update, :destroy]

  # GET /choose_questions
  # GET /choose_questions.json
  def index
    @choose_questions = ChooseQuestion.all
  end

  # GET /choose_questions/1
  # GET /choose_questions/1.json
  def show
  end

  # GET /choose_questions/new
  def new
    @choose_question = ChooseQuestion.new
  end

  # GET /choose_questions/1/edit
  def edit
  end

  # POST /choose_questions
  # POST /choose_questions.json
  def create
    @choose_question = ChooseQuestion.new(choose_question_params)

    respond_to do |format|
      if @choose_question.save
        format.html { redirect_to @choose_question, notice: 'Choose question was successfully created.' }
        format.json { render :show, status: :created, location: @choose_question }
      else
        format.html { render :new }
        format.json { render json: @choose_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /choose_questions/1
  # PATCH/PUT /choose_questions/1.json
  def update
    respond_to do |format|
      if @choose_question.update(choose_question_params)
        format.html { redirect_to @choose_question, notice: 'Choose question was successfully updated.' }
        format.json { render :show, status: :ok, location: @choose_question }
      else
        format.html { render :edit }
        format.json { render json: @choose_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /choose_questions/1
  # DELETE /choose_questions/1.json
  def destroy
    @choose_question.destroy
    respond_to do |format|
      format.html { redirect_to choose_questions_url, notice: 'Choose question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_choose_question
      @choose_question = ChooseQuestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def choose_question_params
      params.require(:choose_question).permit(:title, :body)
    end
end
