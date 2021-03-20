require "application_system_test_case"

class WaitQueuesTest < ApplicationSystemTestCase
  setup do
    @wait_queue = wait_queues(:one)
  end

  test "visiting the index" do
    visit wait_queues_url
    assert_selector "h1", text: "Wait Queues"
  end

  test "creating a Wait queue" do
    visit wait_queues_url
    click_on "New Wait Queue"

    fill_in "Description", with: @wait_queue.description
    fill_in "Destination", with: @wait_queue.destination
    fill_in "Link queue", with: @wait_queue.link_queue
    fill_in "Link subscribe", with: @wait_queue.link_subscribe
    fill_in "Name", with: @wait_queue.name
    click_on "Create Wait queue"

    assert_text "Wait queue was successfully created"
    click_on "Back"
  end

  test "updating a Wait queue" do
    visit wait_queues_url
    click_on "Edit", match: :first

    fill_in "Description", with: @wait_queue.description
    fill_in "Destination", with: @wait_queue.destination
    fill_in "Link queue", with: @wait_queue.link_queue
    fill_in "Link subscribe", with: @wait_queue.link_subscribe
    fill_in "Name", with: @wait_queue.name
    click_on "Update Wait queue"

    assert_text "Wait queue was successfully updated"
    click_on "Back"
  end

  test "destroying a Wait queue" do
    visit wait_queues_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Wait queue was successfully destroyed"
  end
end
