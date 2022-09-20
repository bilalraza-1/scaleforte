class RequestFormSubmissionsController < ApplicationController
  def new
  end

  def create
    @request = RequestFormSubmission.new(request_form_submission_params)
    if @request.save
      redirect_to contact_path, notice: "Your query has been received. Our representative will contact you shortly."
    end
  end

  def request_form_submission_params
    params.require(:request_form_submission).permit(:name, :email, :phone, :country, :comment)
  end
end
