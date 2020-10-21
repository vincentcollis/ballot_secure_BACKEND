class RegisteredVotersController < ApplicationController
  before_action :set_registered_voter, only: [:show, :update, :destroy]

  # GET /registered_voters
  def index
    @registered_voters = RegisteredVoter.all

    render json: @registered_voters
  end

  # GET /registered_voters/1
  def show
    serializer = RegisteredVoter.new(@registered_voter)
    render json: serializer.serializable_hash
  end

  # POST /registered_voters
  def create
    @registered_voter = RegisteredVoter.new(registered_voter_params)

    if @registered_voter.save
      render json: @registered_voter, status: :created, location: @registered_voter
    else
      render json: @registered_voter.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /registered_voters/1
  def update
    if @registered_voter.update(registered_voter_params)
      render json: @registered_voter
    else
      render json: @registered_voter.errors, status: :unprocessable_entity
    end
  end

  # DELETE /registered_voters/1
  def destroy
    @registered_voter.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registered_voter
      @registered_voter = RegisteredVoter.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def registered_voter_params
      params.require(:registered_voter).permit(
        :first_name,
        :last_name,
        :dob,
        :city
      )
    end
end
