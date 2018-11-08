class TextAnswersController < ApplicationController
  before_action :set_text_answer, only: [:show, :edit, :update, :destroy]

  # GET /text_answers
  # GET /text_answers.json
  def index
    @text_answers = TextAnswer.all
  end

  # GET /text_answers/1
  # GET /text_answers/1.json
  def show
  end

  # GET /text_answers/new
  def new
    @text_answer = TextAnswer.new
  end

  # GET /text_answers/1/edit
  def edit
  end

  # POST /text_answers
  # POST /text_answers.json
  def create
    @text_answer = TextAnswer.new(text_answer_params)

    respond_to do |format|
      if @text_answer.save
        format.html { redirect_to @text_answer, notice: 'Text answer was successfully created.' }
        format.json { render :show, status: :created, location: @text_answer }
      else
        format.html { render :new }
        format.json { render json: @text_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /text_answers/1
  # PATCH/PUT /text_answers/1.json
  def update
    respond_to do |format|
      if @text_answer.update(text_answer_params)
        format.html { redirect_to @text_answer, notice: 'Text answer was successfully updated.' }
        format.json { render :show, status: :ok, location: @text_answer }
      else
        format.html { render :edit }
        format.json { render json: @text_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /text_answers/1
  # DELETE /text_answers/1.json
  def destroy
    @text_answer.destroy
    respond_to do |format|
      format.html { redirect_to text_answers_url, notice: 'Text answer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_text_answer
      @text_answer = TextAnswer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def text_answer_params
      params.require(:text_answer).permit(:title, :body)
    end
end
