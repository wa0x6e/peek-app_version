module Peek
  module Views
    class AppVersion < View
      def initialize(options = {})
        @app_name = options.delete(:app_name) || Rails
      end

      def app_version
        @app_version ||= (@app_name::VERSION || `git describe --tags`.strip)
      end
    end
  end
end
