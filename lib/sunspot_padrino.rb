if ActiveRecord::VERSION::MAJOR > 4 || (ActiveRecord::VERSION::MAJOR == 4 && ActiveRecord::VERSION::MINOR >= 1)
  require 'active_support/core_ext/object/json'
else
  require 'active_support/core_ext/object/to_json'
end

require 'sunspot/padrino'
require 'sunspot/padrino/init'

if defined? Padrino::Tasks
  # Add our tasks to padrino-core.
  Padrino::Tasks.files << File.dirname(__FILE__) + '/sunspot/padrino/cli/tasks.rb'
end