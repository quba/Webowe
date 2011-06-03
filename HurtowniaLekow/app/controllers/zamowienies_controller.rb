class ZamowieniesController < ApplicationController
 load_and_authorize_resource
  # GET /zamowienies
  # GET /zamowienies.xml
  def index    
    @zamowienies = Zamowieny.all
    

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @zamowienies }
    end
  end

  # GET /zamowienies/1
  # GET /zamowienies/1.xml
  def show
    @zamowieny = Zamowieny.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @zamowieny }
    end
  end

  # GET /zamowienies/new
  # GET /zamowienies/new.xml
  def new
    @zamowieny = Zamowieny.new(params[:zamowieny])
    

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @zamowieny }
    end
  end

  # GET /zamowienies/1/edit
  def edit
    @zamowieny = Zamowieny.find(params[:id])
  end

  # POST /zamowienies
  # POST /zamowienies.xml
  def create
    @zamowieny = Zamowieny.new(params[:zamowieny])

    respond_to do |format|
      if @zamowieny.save
        format.html { redirect_to(@zamowieny, :notice => 'Zamowienie was successfully created.') }
        format.xml  { render :xml => @zamowieny, :status => :created, :location => @zamowieny }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @zamowieny.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /zamowienies/1
  # PUT /zamowienies/1.xml
  def update
    @zamowieny = Zamowieny.find(params[:id])

    respond_to do |format|
      if @zamowieny.update_attributes(params[:zamowieny])
        format.html { redirect_to(@zamowieny, :notice => 'Zamowienie was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @zamowieny.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /zamowienies/1
  # DELETE /zamowienies/1.xml
  def destroy
    @zamowieny = Zamowieny.find(params[:id])
    @zamowieny.destroy

    respond_to do |format|
      format.html { redirect_to(zamowienies_url) }
      format.xml  { head :ok }
    end
  end
end
