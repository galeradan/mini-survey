require 'pry'
class SurveyController < ApplicationController
  def index
    @membership_inquiries = MembershipInquiry.new
    @questions = Question.all
  end

  def create
    # redirect_to questions_path
  end
end
