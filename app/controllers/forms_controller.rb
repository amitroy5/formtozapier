class FormsController < ApplicationController

  def index
    @forms = Form.all
  end

  def new
    @form = Form.new
  end

  def create
    Form.create(form_params)
    redirect_to forms_path
  end

  private

  def form_params
    params.require(:form).permit(:formname, :zapierurl, :input1name, :input1dropdown, :input2name, :input2dropdown, :input3name, :input3dropdown)
  end

end
