class CarrierAlbumsController < ApplicationController
  # GET /carrier_albums
  # GET /carrier_albums.xml
  def index
    @carrier_albums = CarrierAlbum.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @carrier_albums }
    end
  end

  # GET /carrier_albums/1
  # GET /carrier_albums/1.xml
  def show
    @carrier_album = CarrierAlbum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @carrier_album }
    end
  end

  # GET /carrier_albums/new
  # GET /carrier_albums/new.xml
  def new
    @carrier_album = CarrierAlbum.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @carrier_album }
    end
  end

  # GET /carrier_albums/1/edit
  def edit
    @carrier_album = CarrierAlbum.find(params[:id])
  end

  # POST /carrier_albums
  # POST /carrier_albums.xml
  def create
    @carrier_album = CarrierAlbum.new(params[:carrier_album])

    respond_to do |format|
      if @carrier_album.save
        format.html { redirect_to(@carrier_album, :notice => 'Carrier album was successfully created.') }
        format.xml  { render :xml => @carrier_album, :status => :created, :location => @carrier_album }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @carrier_album.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /carrier_albums/1
  # PUT /carrier_albums/1.xml
  def update
    @carrier_album = CarrierAlbum.find(params[:id])

    respond_to do |format|
      if @carrier_album.update_attributes(params[:carrier_album])
        format.html { redirect_to(@carrier_album, :notice => 'Carrier album was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @carrier_album.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /carrier_albums/1
  # DELETE /carrier_albums/1.xml
  def destroy
    @carrier_album = CarrierAlbum.find(params[:id])
    @carrier_album.destroy

    respond_to do |format|
      format.html { redirect_to(carrier_albums_url) }
      format.xml  { head :ok }
    end
  end
end
