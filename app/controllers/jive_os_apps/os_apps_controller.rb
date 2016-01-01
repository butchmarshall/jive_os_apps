require_dependency "jive_os_apps/application_controller"

module Concerns
	module Controllers
		module OsApps
			extend JiveOsApps::Concerns::Controllers::OsApps
		end
	end
end

module JiveOsApps
	class OsAppsController < ApplicationController
		include Concerns::Controllers::OsApps
	end
end