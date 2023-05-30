class ApplicationController < ActionController::Base
  before_action :authenticate_user!
end
# code for skip loging for certain pages
# class PagesController < ApplicationController
#   skip_before_action :authenticate_user!, only: :home

#   def home
#   end
# end
