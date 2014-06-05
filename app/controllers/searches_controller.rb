class SearchesController < ApplicationController
  before_action :authenticate_user!, except: [:new, :create, :show]
  before_action :set_search, only: [:show, :edit, :update, :destroy]

  # GET /searches
  # GET /searches.json
  def index
    @searches = current_user.searches.all
  end

  # GET /searches/1
  # GET /searches/1.json
  def show
    if @search.industry_id.nil?
      @results = Supplier.near(@search.location)
    else
      @results = Supplier.where("industry_id = ?", @search.industry_id).near(@search.location)
    end
    ids = []
    @results.each do |r|
      ids.push r.id
    end
    @offers = Offer.where(supplier_id: ids).all
  end

  # GET /searches/new
  def new
    @search = Search.new
  end

  # GET /searches/1/edit
  def edit
  end

  # POST /searches
  # POST /searches.json
  def create
    @search = Search.new(search_params)

    if user_signed_in?
      @search.user = current_user
      notice_message = 'Search was successfully created.'
    else
      notice_message = "Remember to create an account if you want to save your searches!"
    end

    respond_to do |format|
      if @search.save
        format.html { redirect_to @search, notice: notice_message }
        format.json { render action: 'show', status: :created, location: @search }
      else
        format.html { redirect_to root_path, alert: "Please enter a location to search!" }
        format.json { render json: @search.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /searches/1
  # PATCH/PUT /searches/1.json
  def update
    respond_to do |format|
      if @search.update(search_params)
        format.html { redirect_to @search, notice: 'Search was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @search.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /searches/1
  # DELETE /searches/1.json
  def destroy
    @search.destroy
    respond_to do |format|
      format.html { redirect_to searches_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_search
      @search = Search.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def search_params
      params.require(:search).permit(:industry_id, :location, :longitude, :latitude)
    end
end
