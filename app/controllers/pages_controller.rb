class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:welcome]

  def home
  end

  def welcome
  end

  def about
  end

  def pricing
  end

  def acupuncture
  end

  def approach
  end
end
