class ApplicationsController < ApplicationController

  def new
    if not params[:password] == 'aharshsparsh'
      flash[:error] = 'Incorrect Passphrase'
      redirect_to '/'
    end

    @app = Application.find_by(firstname: params[:firstname], lastname: params[:lastname])
    if not @app
      @app = Application.new
      @app.firstname = params[:firstname]
      @app.lastname = params[:lastname]
      @app.save
    end
  end

end
