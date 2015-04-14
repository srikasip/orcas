class EventsParsersController < ApplicationController
  before_action :set_events_parser, only: [:show, :edit, :update, :destroy]

  # GET /events_parsers
  # GET /events_parsers.json
  def index
    @events_parsers = EventsParser.all
  end

  # GET /events_parsers/1
  # GET /events_parsers/1.json
  def show
  end

  # GET /events_parsers/new
  def new
    agg_id = params[:event_agg_id]

    @events_parser = EventsParser.new
    @events_parser.event_agg_id = agg_id
  end

  # GET /events_parsers/1/edit
  def edit
    agg_id = params[:event_agg_id]

  end

  # POST /events_parsers
  # POST /events_parsers.json
  def create
    @events_parser = EventsParser.new(events_parser_params)

    respond_to do |format|
      if @events_parser.save
        format.html { redirect_to @events_parser, notice: 'Events parser was successfully created.' }
        format.json { render action: 'show', status: :created, location: @events_parser }
      else
        format.html { render action: 'new' }
        format.json { render json: @events_parser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events_parsers/1
  # PATCH/PUT /events_parsers/1.json
  def update
    respond_to do |format|
      if @events_parser.update(events_parser_params)
        format.html { redirect_to @events_parser, notice: 'Events parser was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @events_parser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events_parsers/1
  # DELETE /events_parsers/1.json
  def destroy
    @events_parser.destroy
    respond_to do |format|
      format.html { redirect_to events_parsers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_events_parser
      @events_parser = EventsParser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def events_parser_params
      params.require(:events_parser).permit(:eventName_xpath, :eventLocation_xpath, :eventDateTime_xpath, :eventDescription_xpath, :eventPrice_xpath, :eventImage_xpath)
    end
end
