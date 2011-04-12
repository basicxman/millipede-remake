# Andrew Horsman

# Millipede Remake
# Error handling.

require 'configuration'

module GameHelpers

  module Errors
    
    def self.throw(error_message, severity)
      log_string = "[#{Time.now.to_i}] [#{severity.to_s}] #{error_message}"
      File.open(Configuration::LOG_FILE, "a") do |log_file|
        log_file.puts log_string
      end

      puts log_string if Configuration::DEBUG_MODE
      $errors ||= []
      $errors << log_string

      severity_based_log = log_file_path_for_severity(severity)
      if severity_based_log.nil?
        throw("Tried to log error message '#{error_message}' but encountered an invalid severity level.", :error)
      else
        File.open(severity_based_log, "a") do |file|
          file.puts error_message
        end
      end
    end

    def self.log_file_path_for_severity(severity)
      return case severity
        when :notice  then Configuration::NOTICE_LOG_FILE
        when :warning then Configuration::WARNING_LOG_FILE
        when :error   then Configuration::ERROR_LOG_FILE
        else nil
      end
    end

  end

end
