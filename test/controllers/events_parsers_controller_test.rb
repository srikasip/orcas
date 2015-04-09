require 'test_helper'

class EventsParsersControllerTest < ActionController::TestCase
  setup do
    @events_parser = events_parsers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:events_parsers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create events_parser" do
    assert_difference('EventsParser.count') do
      post :create, events_parser: { eventDateTime_xpath: @events_parser.eventDateTime_xpath, eventDescription_xpath: @events_parser.eventDescription_xpath, eventImage_xpath: @events_parser.eventImage_xpath, eventLocation_xpath: @events_parser.eventLocation_xpath, eventName_xpath: @events_parser.eventName_xpath, eventPrice_xpath: @events_parser.eventPrice_xpath }
    end

    assert_redirected_to events_parser_path(assigns(:events_parser))
  end

  test "should show events_parser" do
    get :show, id: @events_parser
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @events_parser
    assert_response :success
  end

  test "should update events_parser" do
    patch :update, id: @events_parser, events_parser: { eventDateTime_xpath: @events_parser.eventDateTime_xpath, eventDescription_xpath: @events_parser.eventDescription_xpath, eventImage_xpath: @events_parser.eventImage_xpath, eventLocation_xpath: @events_parser.eventLocation_xpath, eventName_xpath: @events_parser.eventName_xpath, eventPrice_xpath: @events_parser.eventPrice_xpath }
    assert_redirected_to events_parser_path(assigns(:events_parser))
  end

  test "should destroy events_parser" do
    assert_difference('EventsParser.count', -1) do
      delete :destroy, id: @events_parser
    end

    assert_redirected_to events_parsers_path
  end
end
