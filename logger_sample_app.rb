require 'logstash-logger'
require 'yaml'
require 'json'

config = YAML.load_file('logstash_config.yml')

logstash_host = config['logstash_host']
logstash_port = config['logstash_port']

logger = LogStashLogger.new(type: :tcp, host: logstash_host, port: logstash_port)
logger.formatter = proc do |severity, datetime, progname, message|
  log_entry = {
    '@timestamp' => datetime.strftime('%Y-%m-%dT%H:%M:%S.%LZ'),
    'severity' => severity,
    'message' => message,
    'host-ip' => logstash_host
  }
  log_entry.to_json + "\n"
end

(1..10).each do |counter|
  logger.info("This is log message number #{counter}.")
end
