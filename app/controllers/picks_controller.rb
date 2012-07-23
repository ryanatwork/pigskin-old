class PicksController < ApplicationController
  # GET /picks
  # GET /picks.json
  def index
    @picks = Pick.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @picks }
    end
  end

  # GET /picks/1
  # GET /picks/1.json
  def show
    @pick = Pick.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pick }
    end
  end

  # GET /picks/new
  # GET /picks/new.json
  def new
    if params[:id]
      @teams = Week.find(params[:id]).schedules
    else
      schedule = Week.first.schedules(:order => "start_time")
      @teams = schedule.group_by{ |team| team.start_time.strftime("%c")}
    end
      @pick = Pick.new


    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pick }
    end
  end

  # GET /picks/1/edit
  def edit
    @pick = Pick.find(params[:id])
  end

  # POST /picks
  # POST /picks.json
  def create
    #@pick = Pick.new(params[:pick])

    params[:team].each do |team|
      Pick.create(:schedule_id => team[0],:team_id => team[1], :points => params[:points]["#{team[0]}"])
    end

    respond_to do |format|
      #if @pick.save
        redirect_to new_pick_path
        #format.html { redirect_to @pick, notice: 'Pick was successfully created.' }
        #format.json { render json: @pick, status: :created, location: @pick }
      #else
      #  format.html { render action: "new" }
      #  format.json { render json: @pick.errors, status: :unprocessable_entity }
      #end
    end
  end

  # PUT /picks/1
  # PUT /picks/1.json
  def update
    @pick = Pick.find(params[:id])

    respond_to do |format|
      if @pick.update_attributes(params[:pick])
        format.html { redirect_to @pick, notice: 'Pick was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pick.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /picks/1
  # DELETE /picks/1.json
  def destroy
    @pick = Pick.find(params[:id])
    @pick.destroy

    respond_to do |format|
      format.html { redirect_to picks_url }
      format.json { head :no_content }
    end
  end
end
