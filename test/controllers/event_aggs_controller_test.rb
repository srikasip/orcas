require 'test_helper'

class EventAggsControllerTest < ActionController::TestCase
  setup do
    @event_agg = event_aggs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:event_aggs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event_agg" do
    assert_difference('EventAgg.count') do
      post :create, event_agg: { domain: @event_agg.domain, eventDetailsPageLink_xpath: @event_agg.eventDetailsPageLink_xpath, name: @event_agg.name, pagination: @event_agg.pagination, site_type: @event_agg.site_type, url: @event_agg.url }
    end

    assert_redirected_to event_agg_path(assigns(:event_agg))
  end

  test "should show event_agg" do
    get :show, id: @event_agg
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @event_agg
    assert_response :success
  end

  test "should update event_agg" do
    patch :update, id: @event_agg, event_agg: { domain: @event_agg.domain, eventDetailsPageLink_xpath: @event_agg.eventDetailsPageLink_xpath, name: @event_agg.name, pagination: @event_agg.pagination, site_type: @event_agg.site_type, url: @event_agg.url }
    assert_redirected_to event_agg_path(assigns(:event_agg))
  end

  test "should destroy event_agg" do
    assert_difference('EventAgg.count', -1) do
      delete :destroy, id: @event_agg
    end

    assert_redirected_to event_aggs_path
  end
end
