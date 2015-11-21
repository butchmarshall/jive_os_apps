require_dependency "jive_os_apps/application_controller"

module JiveOsApps
	class OsAppsController < ApplicationController
		def show
			@config = YAML.load(ERB.new(File.read("#{Rails.root}/config/jive_osapp_#{params[:app_name]}_config.yml")).result)[Rails.env]
		end

		def locale
			@config = YAML.load(ERB.new(File.read("#{Rails.root}/config/jive_osapp_#{params[:app_name]}_config.yml")).result)[Rails.env]
		end
	end
end