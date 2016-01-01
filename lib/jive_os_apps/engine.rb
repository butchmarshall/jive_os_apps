module JiveOsApps
	class Engine < ::Rails::Engine
		isolate_namespace JiveOsApps

		initializer :append_migrations do |app|
			unless app.root.to_s.match(root.to_s)
				config.paths["db/migrate"].expanded.each do |expanded_path|
					app.config.paths["db/migrate"] << expanded_path
				end
			end
		end
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
