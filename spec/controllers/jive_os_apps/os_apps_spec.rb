require 'spec_helper'

describe ::JiveOsApps::OsAppsController, :type => :controller do
	render_views
	routes { JiveOsApps::Engine.routes }

	describe "GET show" do
		it 'should show' do
			get :show, :format => :xml, :name => :dummy

			puts response.body.inspect
		end
	end
end