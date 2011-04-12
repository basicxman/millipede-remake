# Andrew Horsman

# Millipede Remake
# Error handling.

require File.expand_path(File.dirname(__FILE__) + '/../configuration')

module GameHelpers

  module Errors
    
    def self.throw(error_message, severity)
      File.open(Configuration::LOG_FILE, "a") do |log_file|
        log_file.puts "[#{severity.to_s}] #{error_message}"
      end

      severity_based_log = log_file_path_for_severity(severity)

      if severity_based_log.nil?
        throw("Tried to log error message '#{error_message}' but encountered an invalid severity level.", :error)
      else
        File.open(severity_based_log, "a") do |file|
          file.puts error_message
        end
      end
    end

    def log_file_path_for_severity(severity)
      return case severity
        when :notice  then Configuration::NOTICE_LOG_FILE
        when :warning then Configuration::WARNING_LOG_FILE
        when :error   then Configuration::ERROR_LOG_FILE
        else nil
      end
    end

  end

end
