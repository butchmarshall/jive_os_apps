JiveOsApps::Engine.routes.draw do
	#resources :os_apps
	get ":app_name/xml" => "os_apps#show", :defaults => { :format => 'xml' }, :as => :app_xml
	get ":app_name/locale/:locale" => "os_apps#locale", :defaults => { :format => 'xml' }, :as => :app_locale
end