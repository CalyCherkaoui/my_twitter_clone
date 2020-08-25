require 'test_helper'

class GossipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gossip = gossips(:one)
  end

  test 'should get index' do
    get gossips_url
    assert_response :success
  end

  test 'should get new' do
    get new_gossip_url
    assert_response :success
  end

  test 'should create gossip' do
    assert_difference('Gossip.count') do
      post gossips_url, params: { gossip: { body: @gossip.body } }
    end

    assert_redirected_to gossip_url(Gossip.last)
  end

  test 'should show gossip' do
    get gossip_url(@gossip)
    assert_response :success
  end

  test 'should get edit' do
    get edit_gossip_url(@gossip)
    assert_response :success
  end

  test 'should update gossip' do
    patch gossip_url(@gossip), params: { gossip: { body: @gossip.body } }
    assert_redirected_to gossip_url(@gossip)
  end

  test 'should destroy gossip' do
    assert_difference('Gossip.count', -1) do
      delete gossip_url(@gossip)
    end

    assert_redirected_to gossips_url
  end
end
