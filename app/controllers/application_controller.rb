# You should  not load anything under app with require
# This feature is called autoloading and reloading constants
# You only need require calls for two purposes
# 1.To load files under lib directory
# 2.To load dependancies that have require: false in the Gemfile
class ApplicationController < ActionController::Base
end
