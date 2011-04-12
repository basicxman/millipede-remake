# Andrew Horsman

# Millipede Remake
# Pre Game 

require 'configuration'
require 'fileutils'

class PreGame

  def initialize
    @success = true
    check_log_files
  end

  def success?
    @success
  end

  def check_log_files
    FileUtils.touch(Configuration::LOG_FILE) unless File.exists? Configuration::LOG_FILE
    FileUtils.touch(Configuration::NOTICE_LOG_FILE) unless File.exists? Configuration::NOTICE_LOG_FILE
    FileUtils.touch(Configuration::WARNING_LOG_FILE) unless File.exists? Configuration::WARNING_LOG_FILE
    FileUtils.touch(Configuration::ERROR_LOG_FILE) unless File.exists? Configuration::ERROR_LOG_FILE
  end

end
