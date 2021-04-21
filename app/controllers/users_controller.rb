class UsersController < ApplicationController
  before_action :set_user, only: %i[ show liked feed followers following ]

  private

    def set_user
      @user = User.find_by!(username: params.fetch(:username))
    end
end