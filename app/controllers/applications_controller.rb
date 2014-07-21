class ApplicationsController < ApplicationController

  def new
    @app = Application.find_by(firstname: params[:firstname], lastname: params[:lastname])
    if not params[:passphrase] == app_passphrase
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
    @app.q1 = params[:q1]
    @app.q2 = params[:q2]
    @app.q3 = params[:q3]
    @app.q4 = params[:q4]
    @app.q5 = params[:q5]
    @app.q6 = construct(params[:q6_1], params[:q6_2], params[:q6_3], params[:q6_4])
    @app.q7a = params[:q7_1]
    @app.q7b = params[:q7_2]
    @app.q7c = params[:q7_3]
    @app.q7d = params[:q7_4]
    @app.q8 = params[:q8]
    @app.save
  end

  def construct(part1, part2, part3, part4)
    return "#{part1},#{part2},#{part3},#{part4}"
  end

end
