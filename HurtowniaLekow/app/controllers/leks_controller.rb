class LeksController < ApplicationController
  # GET /leks
  # GET /leks.xml
  def index
    @leks = Lek.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @leks }
    end
  end

  # GET /leks/1
  # GET /leks/1.xml
  def show
    @lek = Lek.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @lek }
    end
  end

  # GET /leks/new
  # GET /leks/new.xml
  def new
    @lek = Lek.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @lek }
    end
  end

  # GET /leks/1/edit
  def edit
    @lek = Lek.find(params[:id])
  end

  # POST /leks
  # POST /leks.xml
  def create
    @lek = Lek.new(params[:lek])

    respond_to do |format|
      if @lek.save
        format.html { redirect_to(@lek, :notice => 'Lek was successfully created.') }
        format.xml  { render :xml => @lek, :status => :created, :location => @lek }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @lek.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /leks/1
  # PUT /leks/1.xml
  def update
    @lek = Lek.find(params[:id])

    respond_to do |format|
      if @lek.update_attributes(params[:lek])
        format.html { redirect_to(@lek, :notice => 'Lek was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @lek.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /leks/1
  # DELETE /leks/1.xml
  def destroy
    @lek = Lek.find(params[:id])
    @lek.destroy

    respond_to do |format|
      format.html { redirect_to(leks_url) }
      format.xml  { head :ok }
    end
  end
end
