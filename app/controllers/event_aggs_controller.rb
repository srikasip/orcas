class EventAggsController < ApplicationController
  before_action :set_event_agg, only: [:show, :edit, :update, :destroy]

  # GET /event_aggs
  # GET /event_aggs.json
  def index
    @event_aggs = EventAgg.all
  end

  # GET /event_aggs/1
  # GET /event_aggs/1.json
  def show
  end

  # GET /event_aggs/new
  def new
    @event_agg = EventAgg.new
  end

  # GET /event_aggs/1/edit
  def edit
  end

  # POST /event_aggs
  # POST /event_aggs.json
  def create
    @event_agg = EventAgg.new(event_agg_params)

    respond_to do |format|
      if @event_agg.save
        format.html { redirect_to @event_agg, notice: 'Event agg was successfully created.' }
        format.json { render action: 'show', status: :created, location: @event_agg }
      else
        format.html { render action: 'new' }
        format.json { render json: @event_agg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_aggs/1
  # PATCH/PUT /event_aggs/1.json
  def update
    respond_to do |format|
      if @event_agg.update(event_agg_params)
        format.html { redirect_to @event_agg, notice: 'Event agg was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @event_agg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_aggs/1
  # DELETE /event_aggs/1.json
  def destroy
    @event_agg.destroy
    respond_to do |format|
      format.html { redirect_to event_aggs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_agg
      @event_agg = EventAgg.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_agg_params
      params.require(:event_agg).permit(:name, :url, :site_type, :pagination, :domain, :eventDetailsPageLink_xpath)
    end
end
