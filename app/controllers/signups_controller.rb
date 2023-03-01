class SignupsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :signup_validation_error

    def create
        signup = Signup.create!(signup_params)
        render json: signup, status: :created
    end

    private

    def signup_params
        params.permit(:time, :camper_id, :activity_id)
    end

    def signup_validation_error
        render json: {"errors": ["validation errors"]}, status: 422
    end

end
