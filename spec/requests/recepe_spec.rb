require "rails_helper"

describe "Recepe management" do
	it "creates a Recepe and redirect to recepes_path" do 
		get new_recepe_path
		expect(response).to render_template(:new)

   		post recepes_path, :recepe => {:name => "My Widget"}

  		expect(response).to redirect_to(assigns(:recepe))
    	follow_redirect!

	end

	it "does not create a recepe with empty name" do
		get new_recepe_path
		expect(response).to render_template(:new)

   		post recepes_path, :recepe => {:name => ""}

  		expect(response.body).to include("error")
	end


end