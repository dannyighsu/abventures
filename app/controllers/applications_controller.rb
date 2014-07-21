class ApplicationsController < ApplicationController

  def new
    @app = Application.find_by(firstname: params[:firstname], lastname: params[:lastname])
    if not params[:passphrase] == 'aharshsparsh'
      flash[:error] = 'Incorrect Passphrase'
      redirect_to '/start'
    elsif not params[:firstname].length > 0
      flash[:error] = 'First Name must not be blank.'
      redirect_to '/start'
    elsif not params[:lastname].length > 0
      flash[:error] = 'Last Name must not be blank.'
      redirect_to '/start'
    elsif @app != nil and @app.password != params[:password]
      flash[:error] = 'Incorrect Password/Name'
      redirect_to '/start'
    elsif not @app
      @app = Application.new
      @app.firstname = params[:firstname]
      @app.lastname = params[:lastname]
      @app.password = params[:password]
      @app.save
    end
  end

  def submit
    @app = Application.find_by(firstname: params[:firstname], lastname: params[:lastname])
    
  end

end
