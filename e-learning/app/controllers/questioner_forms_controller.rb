class QuestionerFormsController < ApplicationController
  before_action :set_questioner_form, only: [:show, :edit, :update, :destroy]

  # GET /questioner_forms
  # GET /questioner_forms.json
  def index
    @questioner_forms = QuestionerForm.all
  end

  # GET /questioner_forms/1
  # GET /questioner_forms/1.json
  def show
  end

  # GET /questioner_forms/new
  def new
    @questioner_form = QuestionerForm.new
    @questioner_form.user_id = current_user.id
  end

  # GET /questioner_forms/1/edit
  def edit
  end

  # POST /questioner_forms
  # POST /questioner_forms.json
  def create
    @questioner_form = QuestionerForm.new(questioner_form_params)
    @questioner_form.user_id = current_user.id

    respond_to do |format|
      if @questioner_form.save
        format.html { redirect_to @questioner_form, notice: 'Questioner form was successfully created.' }
        format.json { render :show, status: :created, location: @questioner_form }
      else
        format.html { render :new }
        format.json { render json: @questioner_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /questioner_forms/1
  # PATCH/PUT /questioner_forms/1.json
  def update
    respond_to do |format|
      if @questioner_form.update(questioner_form_params)
        format.html { redirect_to @questioner_form, notice: 'Questioner form was successfully updated.' }
        format.json { render :show, status: :ok, location: @questioner_form }
      else
        format.html { render :edit }
        format.json { render json: @questioner_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questioner_forms/1
  # DELETE /questioner_forms/1.json
  def destroy
    @questioner_form.destroy
    respond_to do |format|
      format.html { redirect_to questioner_forms_url, notice: 'Questioner form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_questioner_form
      @questioner_form = QuestionerForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def questioner_form_params
      params.require(:questioner_form).permit(:user_id, question, {answer_ids: []})
    end
end
