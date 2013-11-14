class PlayerStatisticsController < ApplicationController
before_filter :authorise, :except => [:index]

  # GET /player_statistics
  # GET /player_statistics.json
  def index
    @player_statistics = PlayerStatistic.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @player_statistics }
    end
  end

  # GET /player_statistics/1
  # GET /player_statistics/1.json
  def show
    @player_statistic = PlayerStatistic.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @player_statistic }
    end
  end

  # GET /player_statistics/new
  # GET /player_statistics/new.json
  def new
    @player_statistic = PlayerStatistic.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @player_statistic }
    end
  end

  # GET /player_statistics/1/edit
  def edit
    @player_statistic = PlayerStatistic.find(params[:id])
  end

  # POST /player_statistics
  # POST /player_statistics.json
  def create
    @player_statistic = PlayerStatistic.new(params[:player_statistic])

    respond_to do |format|
      if @player_statistic.save
        format.html { redirect_to @player_statistic, notice: 'Player statistic was successfully created.' }
        format.json { render json: @player_statistic, status: :created, location: @player_statistic }
      else
        format.html { render action: "new" }
        format.json { render json: @player_statistic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /player_statistics/1
  # PUT /player_statistics/1.json
  def update
    @player_statistic = PlayerStatistic.find(params[:id])

    respond_to do |format|
      if @player_statistic.update_attributes(params[:player_statistic])
        format.html { redirect_to @player_statistic, notice: 'Player statistic was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @player_statistic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /player_statistics/1
  # DELETE /player_statistics/1.json
  def destroy
    @player_statistic = PlayerStatistic.find(params[:id])
    @player_statistic.destroy

    respond_to do |format|
      format.html { redirect_to player_statistics_url }
      format.json { head :no_content }
    end
  end
end
