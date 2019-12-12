class ZapierSubmissionsController < ApplicationController
  include SubmissionBehaviors

  def zapier_submission_params
    zapier_submission_attributes = %i[id zapier_form_id]
    params.require(:zapier_submission).permit(zapier_submission_attributes + form_values_attributes)
  end

  def new
    @zapier_submission = ZapierSubmission.new
    @zapier_form = ZapierForm.find_by(id: params[:zapier_form_id])
  end

  def create
    @zapier_submission = ZapierSubmission.create(zapier_submission_params)
    return redirect_to(zapier_submissions_path) if @zapier_submission.valid?

    render :new
  end

  def index
    @zapier_forms = ZapierForm.all
    @zapier_submissions = ZapierSubmission.all
  end
end