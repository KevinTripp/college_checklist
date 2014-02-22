class CollegeListsController < ApplicationController
  # GET /college_lists
  # GET /college_lists.json
  def index
    @college_lists = CollegeList.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @college_lists }
    end
  end

  # GET /college_lists/1
  # GET /college_lists/1.json
  def show
    @college_list = CollegeList.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @college_list }
    end
  end

  # GET /college_lists/new
  # GET /college_lists/new.json
  def new
    @college_list = CollegeList.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @college_list }
    end
  end

  # GET /college_lists/1/edit
  def edit
    @college_list = CollegeList.find(params[:id])
  end

  # POST /college_lists
  # POST /college_lists.json
  def create
    @college_list = CollegeList.new(params[:college_list])

    respond_to do |format|
      if @college_list.save
        format.html { redirect_to @college_list, notice: 'College list was successfully created.' }
        format.json { render json: @college_list, status: :created, location: @college_list }
      else
        format.html { render action: "new" }
        format.json { render json: @college_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /college_lists/1
  # PUT /college_lists/1.json
  def update
    @college_list = CollegeList.find(params[:id])

    respond_to do |format|
      if @college_list.update_attributes(params[:college_list])
        format.html { redirect_to @college_list, notice: 'College list was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @college_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /college_lists/1
  # DELETE /college_lists/1.json
  def destroy
    @college_list = CollegeList.find(params[:id])
    @college_list.destroy

    respond_to do |format|
      format.html { redirect_to college_lists_url }
      format.json { head :no_content }
    end
  end
end
