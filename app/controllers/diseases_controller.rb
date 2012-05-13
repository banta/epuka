class DiseasesController < ApplicationController
	before_filter :authenticate_user!, :except => [ :index, :show ]
	before_filter :only_allow_admin, :only => [ :destroy ]

  # GET /diseases
  # GET /diseases.json
  def index
		if params[:search].present?
      @diseases = Disease.near(params[:search], 50, :order => :distance)
    else
      @diseases = Disease.all
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @diseases }
    end
  end

  # GET /diseases/1
  # GET /diseases/1.json
  def show
    @disease = Disease.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @disease }
    end
  end

  # GET /diseases/new
  # GET /diseases/new.json
  def new
    @disease = Disease.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @disease }
    end
  end

  # GET /diseases/1/edit
  def edit
    @disease = Disease.find(params[:id])
  end

  # POST /diseases
  # POST /diseases.json
  def create
    @disease = Disease.new(params[:disease])
		@disease.user_id = current_user

    respond_to do |format|
      if @disease.save
        format.html { redirect_to @disease, notice: 'Disease was successfully created.' }
        format.json { render json: @disease, status: :created, location: @disease }
      else
        format.html { render action: "new" }
        format.json { render json: @disease.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /diseases/1
  # PUT /diseases/1.json
  def update
    @disease = Disease.find(params[:id])

    respond_to do |format|
      if @disease.update_attributes(params[:disease])
        format.html { redirect_to @disease, notice: 'Disease was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @disease.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diseases/1
  # DELETE /diseases/1.json
  def destroy
    @disease = Disease.find(params[:id])
    @disease.destroy

    respond_to do |format|
      format.html { redirect_to diseases_url }
      format.json { head :no_content }
    end
  end
end
