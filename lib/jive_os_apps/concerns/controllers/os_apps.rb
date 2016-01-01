module JiveOsApps
	module Concerns
		module Controllers
			module OsApps
				extend ActiveSupport::Concern

				def show
					render template: (template_exists?("jive_os_apps/os_apps/show_#{params[:name]}") ? "jive_os_apps/os_apps/show_#{params[:name]}" : "jive_os_apps/os_apps/show")
				end

				def locale
					render template: (template_exists?("jive_os_apps/os_apps/locale_#{params[:name]}") ? "jive_os_apps/os_apps/locale_#{params[:name]}" : "jive_os_apps/os_apps/locale")
				end
			end
		end
	end
end