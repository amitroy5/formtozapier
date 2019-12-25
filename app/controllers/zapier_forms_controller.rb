class ZapierFormsController < ApplicationController
  include FormBehaviors

  def new
    @zapier_form = ZapierForm.new
  end

  def create
    @zapier_form = ZapierForm.create(zapier_form_params)
    if @zapier_form.valid?
      redirect_to(zapier_forms_path)
    else
      render :new
    end
  end

  def show
  end

  def index
    @zapier_forms = ZapierForm.all
  end

  def destroy
  end

  def update
  end

  private

  def zapier_form_params
    params.require(:zapier_form).permit(%i[id name zapierapi] + form_fields_attributes)
  end
end