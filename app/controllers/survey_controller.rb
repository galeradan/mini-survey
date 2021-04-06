require 'pry'
class SurveyController < ApplicationController
  def index
    @membership_inquiries = MembershipInquiry.new
    @questions = Question.all
  end

  def create
   
    @inquiry = MembershipInquiry.create(inquiry_params[:questions])
    
    # Should handle failed save
    reset_session
    respond_to do |format|
        format.html { redirect_to memberships_path, notice: "Inquiry was successfully created." }
    end
    
  end

  private

  def inquiry_params
    params.permit(:questions => [:session_id, :question_id, :answer])
  end
end
