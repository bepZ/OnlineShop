class BookingContentsController < ApplicationController
  # GET /booking_contents
  # GET /booking_contents.xml
  def index
    @booking_contents = BookingContent.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @booking_contents }
    end
  end

  # GET /booking_contents/1
  # GET /booking_contents/1.xml
  def show
    @booking_content = BookingContent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @booking_content }
    end
  end

  # GET /booking_contents/new
  # GET /booking_contents/new.xml
  def new
    @booking_content = BookingContent.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @booking_content }
    end
  end

  # GET /booking_contents/1/edit
  def edit
    @booking_content = BookingContent.find(params[:id])
  end

  # POST /booking_contents
  # POST /booking_contents.xml
  def create
    @booking_content = BookingContent.new(params[:booking_content])

    respond_to do |format|
      if @booking_content.save
        format.html { redirect_to(@booking_content, :notice => 'Booking content was successfully created.') }
        format.xml  { render :xml => @booking_content, :status => :created, :location => @booking_content }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @booking_content.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /booking_contents/1
  # PUT /booking_contents/1.xml
  def update
    @booking_content = BookingContent.find(params[:id])

    respond_to do |format|
      if @booking_content.update_attributes(params[:booking_content])
        format.html { redirect_to(@booking_content, :notice => 'Booking content was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @booking_content.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /booking_contents/1
  # DELETE /booking_contents/1.xml
  def destroy
    @booking_content = BookingContent.find(params[:id])
    @booking_content.destroy

    respond_to do |format|
      format.html { redirect_to(booking_contents_url) }
      format.xml  { head :ok }
    end
  end
end
