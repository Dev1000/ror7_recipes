# frozen_string_literal: true

require 'test_helper'

class RecipesTest < ActionDispatch::IntegrationTest
  def setup
    @chef = Chef.create!(name: 'lalo', email: 'lalo@example.com', state: 'enabled')
    @recipe1 = Recipe.create!(name: 'Vedgetable', description: 'Another great vegetable', chef: @chef)
    @recipe2 = Recipe.create!(name: 'Chicken Saute', description: 'Chicken great dish', chef: @chef)
  end

  test 'should get recipes list' do
    get recipes_path
    assert_template 'recipes/index'
    assert_match @recipe1.name, response.body
    assert_match @recipe2.name, response.body
  end

  test 'should get recipes index' do
    get recipes_path
    assert_response :success
  end
end
