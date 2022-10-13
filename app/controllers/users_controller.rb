class UsersController < ApplicationController
  def search
    # @users = User.all
    # @company = Company.all
    # render json: @company.to_json, status: :ok
  #   # @users = User.where("name LIKE ? OR email LIKE ?", "%#{params[:search]}%","%#{params[:search]}%")
    # @users = UsersIndex.query(query_string: { fields: [:name, :email], query: search_params[:query], default_operator: 'and' }).limit(2000)
    @company = CompaniesIndex.query(query_string: { fields: [:com_name, :user_id], query: search_params[:query], default_operator: 'and' }).limit(2000)

    render json: @company.to_json, status: :ok
  end

  def index
    @users = UsersIndex.query(query_string: { fields: [:name, :email], query: search_params[:search].to_s, default_operator: 'and' }).limit(2000)
  end

  def data
    @users = User.where("name LIKE ? OR email LIKE ?", "%#{params[:search]}%","%#{params[:search]}%")
  end

  private

  def search_params
    params.permit(:query, :search, :page, :per)
  end


end
