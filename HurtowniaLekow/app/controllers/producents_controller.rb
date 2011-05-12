class ProducentsController < ApplicationController
  load_and_authorize_resource

  # GET /producents
  # GET /producents.xml
  def index
    @producents = Producent.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @producents }
    end
  end

  # GET /producents/1
  # GET /producents/1.xml
  def show
    @producent = Producent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @producent }
    end
  end

  # GET /producents/new
  # GET /producents/new.xml
  def new
    @producent = Producent.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @producent }
    end
  end

  # GET /producents/1/edit
  def edit
    @producent = Producent.find(params[:id])
  end

  # POST /producents
  # POST /producents.xml
  def create
    @producent = Producent.new(params[:producent])

    respond_to do |format|
      if @producent.save
        format.html { redirect_to(@producent, :notice => 'Producent was successfully created.') }
        format.xml  { render :xml => @producent, :status => :created, :location => @producent }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @producent.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /producents/1
  # PUT /producents/1.xml
  def update
    @producent = Producent.find(params[:id])

    respond_to do |format|
      if @producent.update_attributes(params[:producent])
        format.html { redirect_to(@producent, :notice => 'Producent was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @producent.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /producents/1
  # DELETE /producents/1.xml
  def destroy
    @producent = Producent.find(params[:id])
    @producent.destroy

    respond_to do |format|
      format.html { redirect_to(producents_url) }
      format.xml  { head :ok }
    end
  end
end
