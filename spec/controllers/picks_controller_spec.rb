require 'spec_helper'

describe PicksController do

  # This should return the minimal set of attributes required to create a valid
  # Pick. As you add validations to Pick, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PicksController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all picks as @picks" do
      pick = Pick.create! valid_attributes
      get :index, {}, valid_session
      assigns(:picks).should eq([pick])
    end
  end

  describe "GET show" do
    it "assigns the requested pick as @pick" do
      pick = Pick.create! valid_attributes
      get :show, {:id => pick.to_param}, valid_session
      assigns(:pick).should eq(pick)
    end
  end

  describe "GET new" do
    it "assigns a new pick as @pick" do
      get :new, {}, valid_session
      assigns(:pick).should be_a_new(Pick)
    end
  end

  describe "GET edit" do
    it "assigns the requested pick as @pick" do
      pick = Pick.create! valid_attributes
      get :edit, {:id => pick.to_param}, valid_session
      assigns(:pick).should eq(pick)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Pick" do
        expect {
          post :create, {:schedule =>{"id"=>{"1"=>"5", "2"=>"13"}}, :points =>{"id"=>{"1"=>"1", "2"=>"4"}}}, valid_session
        }.to change(Pick, :count).by(1)
      end

      it "assigns a newly created pick as @pick" do
        post :create, {:pick => valid_attributes}, valid_session
        assigns(:pick).should be_a(Pick)
        assigns(:pick).should be_persisted
      end

      it "redirects to the created pick" do
        post :create, {:pick => valid_attributes}, valid_session
        response.should redirect_to(Pick.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved pick as @pick" do
        # Trigger the behavior that occurs when invalid params are submitted
        Pick.any_instance.stub(:save).and_return(false)
        post :create, {:pick => {}}, valid_session
        assigns(:pick).should be_a_new(Pick)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Pick.any_instance.stub(:save).and_return(false)
        post :create, {:pick => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested pick" do
        pick = Pick.create! valid_attributes
        # Assuming there are no other picks in the database, this
        # specifies that the Pick created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Pick.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => pick.to_param, :pick => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested pick as @pick" do
        pick = Pick.create! valid_attributes
        put :update, {:id => pick.to_param, :pick => valid_attributes}, valid_session
        assigns(:pick).should eq(pick)
      end

      it "redirects to the pick" do
        pick = Pick.create! valid_attributes
        put :update, {:id => pick.to_param, :pick => valid_attributes}, valid_session
        response.should redirect_to(pick)
      end
    end

    describe "with invalid params" do
      it "assigns the pick as @pick" do
        pick = Pick.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Pick.any_instance.stub(:save).and_return(false)
        put :update, {:id => pick.to_param, :pick => {}}, valid_session
        assigns(:pick).should eq(pick)
      end

      it "re-renders the 'edit' template" do
        pick = Pick.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Pick.any_instance.stub(:save).and_return(false)
        put :update, {:id => pick.to_param, :pick => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested pick" do
      pick = Pick.create! valid_attributes
      expect {
        delete :destroy, {:id => pick.to_param}, valid_session
      }.to change(Pick, :count).by(-1)
    end

    it "redirects to the picks list" do
      pick = Pick.create! valid_attributes
      delete :destroy, {:id => pick.to_param}, valid_session
      response.should redirect_to(picks_url)
    end
  end

end
