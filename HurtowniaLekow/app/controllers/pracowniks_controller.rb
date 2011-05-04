class PracowniksController < ApplicationController
  # GET /pracowniks
  # GET /pracowniks.xml
  def index
    @pracowniks = Pracownik.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pracowniks }
    end
  end

  # GET /pracowniks/1
  # GET /pracowniks/1.xml
  def show
    @pracownik = Pracownik.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @pracownik }
    end
  end

  # GET /pracowniks/new
  # GET /pracowniks/new.xml
  def new
    @pracownik = Pracownik.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @pracownik }
    end
  end

  # GET /pracowniks/1/edit
  def edit
    @pracownik = Pracownik.find(params[:id])
  end

  # POST /pracowniks
  # POST /pracowniks.xml
  def create
    @pracownik = Pracownik.new(params[:pracownik])

    respond_to do |format|
      if @pracownik.save
        format.html { redirect_to(@pracownik, :notice => 'Pracownik was successfully created.') }
        format.xml  { render :xml => @pracownik, :status => :created, :location => @pracownik }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @pracownik.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pracowniks/1
  # PUT /pracowniks/1.xml
  def update
    @pracownik = Pracownik.find(params[:id])

    respond_to do |format|
      if @pracownik.update_attributes(params[:pracownik])
        format.html { redirect_to(@pracownik, :notice => 'Pracownik was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @pracownik.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pracowniks/1
  # DELETE /pracowniks/1.xml
  def destroy
    @pracownik = Pracownik.find(params[:id])
    @pracownik.destroy

    respond_to do |format|
      format.html { redirect_to(pracowniks_url) }
      format.xml  { head :ok }
    end
  end
end
