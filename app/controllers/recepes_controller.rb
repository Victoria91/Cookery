class RecepesController < ApplicationController
  # GET /recepes
  # GET /recepes.json
  def index
    @recepes = Recepe.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @recepes }
    end
  end

  # GET /recepes/1
  # GET /recepes/1.json
  def show
    @recepe = Recepe.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @recepe }
    end
  end

  # GET /recepes/new
  # GET /recepes/new.json
  def new
    @recepe = Recepe.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @recepe }
    end
  end

  # GET /recepes/1/edit
  def edit
    @recepe = Recepe.find(params[:id])
  end

  # POST /recepes
  # POST /recepes.json
  def create
    @recepe = Recepe.new(params[:recepe])

    respond_to do |format|
      if @recepe.save
        format.html { redirect_to @recepe, notice: 'Recepe was successfully created.' }
        format.json { render json: @recepe, status: :created, location: @recepe }
      else
        format.html { render action: "new" }
        format.json { render json: @recepe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /recepes/1
  # PUT /recepes/1.json
  def update
    @recepe = Recepe.find(params[:id])

    respond_to do |format|
      if @recepe.update_attributes(params[:recepe])
        format.html { redirect_to @recepe, notice: 'Recepe was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @recepe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recepes/1
  # DELETE /recepes/1.json
  def destroy
    @recepe = Recepe.find(params[:id])
    @recepe.destroy

    respond_to do |format|
      format.html { redirect_to recepes_url }
      format.json { head :ok }
    end
  end
end
