class LeadsController < ApplicationController

  def index
    @leads = Lead.all
  end

  def new
  end

  def create
    lead = Lead.new(lead_params)
    if lead.valid? && lead.create
      redirect_to leads_path
    else
      render :new
    end
  end

  private

  def lead_params
    {
      first_name: params[:first_name], last_name: params[:last_name],
      company: params[:company], job_title: params[:job_title],
      phone: params[:phone], website: params[:website], email: params[:email]
    }
  end

end
