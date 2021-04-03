require 'pry'
class SurveyController < ApplicationController
  def index
    @membership_inquiries = MembershipInquiry.new
    @questions = Question.all
  end

  def create
    @inquiry = MembershipInquiry.new(inquiry_params)

    respond_to do |format|
      if @inquiry.save
        format.html { redirect_to memberships_path, notice: "Inquiry was successfully created." }
      else
        format.html { redirect_to memberships_path, notice: "Inqury was not created." }
      end
    end
    
  end

  private

  def inquiry_params
    params.require(:membership_inquiry).permit(:session_id, :question_id, :answer)
  end
end
