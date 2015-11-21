module JiveOsApps
	class Engine < ::Rails::Engine
		isolate_namespace JiveOsApps
	end

	class Configuration
		attr_accessor :site_name
	end
    class << self
        attr_writer :configuration
    end
	module_function
	def configuration
		@configuration ||= Configuration.new
	end

	def configure
		yield(configuration)
	end
end
