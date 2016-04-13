require 'open3'

BIN_PATH = File.join(File.dirname(__FILE__), "../mruby/bin/ana")

assert('setup') do
  output, status = Open3.capture2("#{BIN_PATH}")

  assert_true status.success?, "Process did not exit cleanly"
  assert_include output, "Hello World"
end
