JiveOsApps::Engine.routes.draw do
	get ":name" => "os_apps#show", :defaults => { :format => 'xml' }, :as => :app_xml
	get ":name/:locale" => "os_apps#locale", :defaults => { :format => 'xml' }, :as => :app_local
end