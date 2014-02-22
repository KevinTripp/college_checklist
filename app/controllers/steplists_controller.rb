class SteplistsController < ApplicationController
  # GET /steplists
  # GET /steplists.json
  def index
    @steplists = Steplist.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @steplists }
    end
  end

  # GET /steplists/1
  # GET /steplists/1.json
  def show
    @steplist = Steplist.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @steplist }
    end
  end

  # GET /steplists/new
  # GET /steplists/new.json
  def new
    @steplist = Steplist.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @steplist }
    end
  end

  # GET /steplists/1/edit
  def edit
    @steplist = Steplist.find(params[:id])
  end

  # POST /steplists
  # POST /steplists.json
  def create
    @steplist = Steplist.new(params[:steplist])

    respond_to do |format|
      if @steplist.save
        format.html { redirect_to @steplist, notice: 'Steplist was successfully created.' }
        format.json { render json: @steplist, status: :created, location: @steplist }
      else
        format.html { render action: "new" }
        format.json { render json: @steplist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /steplists/1
  # PUT /steplists/1.json
  def update
    @steplist = Steplist.find(params[:id])

    respond_to do |format|
      if @steplist.update_attributes(params[:steplist])
        format.html { redirect_to @steplist, notice: 'Steplist was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @steplist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /steplists/1
  # DELETE /steplists/1.json
  def destroy
    @steplist = Steplist.find(params[:id])
    @steplist.destroy

    respond_to do |format|
      format.html { redirect_to steplists_url }
      format.json { head :no_content }
    end
  end
end
