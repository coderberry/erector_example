require 'test_helper'

class MoviesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Movie.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Movie.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Movie.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to movie_url(assigns(:movie))
  end
  
  def test_edit
    get :edit, :id => Movie.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Movie.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Movie.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Movie.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Movie.first
    assert_redirected_to movie_url(assigns(:movie))
  end
  
  def test_destroy
    movie = Movie.first
    delete :destroy, :id => movie
    assert_redirected_to movies_url
    assert !Movie.exists?(movie.id)
  end
end
