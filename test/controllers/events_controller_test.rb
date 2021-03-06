require 'test_helper'

class EventsControllerTest < ActionController::TestCase
  setup do
    @event = events(:one)
  end
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post :create, event: { hostname: @event.hostname, message: @event.message, organization_id: @event.organization_id, timestamp: @event.timestamp }
    end

    assert_redirected_to event_path(assigns(:event))
  end
  test "should get edit" do
    get :edit, id: @event
    assert_response :success
  end

  test "should update event" do
    patch :update, id: @event, event: { hostname: @event.hostname, message: @event.message, organization_id: @event.organization_id, timestamp: @event.timestamp }
    assert_redirected_to event_path(assigns(:event))
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete :destroy, id: @event
    end

    assert_redirected_to events_path
  end
end
