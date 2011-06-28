class BasketContentsController < ApplicationController
  # GET /basket_contents
  # GET /basket_contents.xml
  def index
    @basket_contents = BasketContent.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @basket_contents }
    end
  end

  # GET /basket_contents/1
  # GET /basket_contents/1.xml
  def show
    @basket_content = BasketContent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @basket_content }
    end
  end

  # GET /basket_contents/new
  # GET /basket_contents/new.xml
  def new
    @basket_content = BasketContent.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @basket_content }
    end
  end

  # GET /basket_contents/1/edit
  def edit
    @basket_content = BasketContent.find(params[:id])
  end

  # POST /basket_contents
  # POST /basket_contents.xml
  def create
    @basket_content = BasketContent.new(params[:basket_content])

    respond_to do |format|
      if @basket_content.save
        format.html { redirect_to(@basket_content, :notice => 'Basket content was successfully created.') }
        format.xml  { render :xml => @basket_content, :status => :created, :location => @basket_content }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @basket_content.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /basket_contents/1
  # PUT /basket_contents/1.xml
  def update
    @basket_content = BasketContent.find(params[:id])

    respond_to do |format|
      if @basket_content.update_attributes(params[:basket_content])
        format.html { redirect_to(@basket_content, :notice => 'Basket content was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @basket_content.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /basket_contents/1
  # DELETE /basket_contents/1.xml
  def destroy
    @basket_content = BasketContent.find(params[:id])
    @basket_content.destroy

    respond_to do |format|
      format.html { redirect_to(basket_contents_url) }
      format.xml  { head :ok }
    end
  end
end
