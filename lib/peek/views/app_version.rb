module Peek
  module Views
    # AppVersion view
    class AppVersion < View
      # Setting up the peek views
      # Accepted keys in options:
      # - app_name: Name of your Rails application (default: Rails)
      def initialize(options = {})
        @app_name = options.delete(:app_name) || Rails
      end

      # Return the application version number is set
      # Else, build it from the git tag
      def app_version
        @app_version ||= (@app_name::VERSION || `git describe --tags`.strip)
      end
    end
  end
end
