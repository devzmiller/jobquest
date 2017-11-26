class ConnectionsController < ApplicationController
  def new
    @connection = Connection.new
  end

  def create
    @connection = Connection.new(connection_params)
    if @connection.save
      redirect_to connection_path(@connection)
    else
      @errors = @connection.errors.full_messages
      render :new
    end
  end

  def show
    @connection = Connection.find(params[:id])
  end

  private

  def connection_params
    params.require(:connection).permit(:name, :email, :phone, :company, :job_title, :first_contact, :first_response, :follow_up, :second_response, :coffee_date)
  end
end
