
# Ruby Logstash Config Example

This repository provides an example code and configuration files for shipping logs from a Ruby application to Logstash in the ELK stack.
 [Complete Article](https://raowaqasakram.hashnode.dev/configuring-log-shipping-from-ruby-application-to-logstash-elk)

## Introduction

Logstash and the ELK stack (Elasticsearch, Logstash, and Kibana) are powerful tools for log management and analysis. This repository guides you through the process of configuring your Ruby application to ship logs to Logstash.

## Instructions

### Step 1: Install Required Gems

Make sure you have the `logstash-logger` gem installed in your Ruby application. You can do this by running the following command:
````
sudo gem install logstash-logger
````

### Step 2: Create a Configuration File
Create a configuration file named **logstash_config.yml** with the following content:
````
logstash_host: LOGSTASH-SERVER-HOST
logstash_port: LOGSTASH-PORT
````

Substitute the placeholder `LOGSTASH-SERVER-HOST` with the actual IP address/Host of the server where you have deployed Logstash.

Update the placeholder `LOGSTASH-PORT` with the TCP port number that you have specified in your `logstash.conf` file to receive the logs.

This configuration file will define the connection details for Logstash.

### Step 3: Read Configuration File in Ruby

In your Ruby application, read the configuration file and use the values to configure the Logstash logger. 

Refer to the provided example code in the repository's code files name [logger_sample_app.rb](https://github.com/raowaqasakram/ruby-logstash-elk-config-example/blob/main/logger_sample_app.rb).

## "logstash.conf" File

This repository includes a sample `logstash.conf` file that you can utilize when configuring the ELK stack.

This file contains the Logstash configuration that defines how to process the incoming logs. You can customize it according to your requirements.

## Additional Notes

- You can verify that your logs are being successfully shipped by checking the Kibana interface.
- Feel free to modify the example code and configuration files according to your application's specific needs.

## Repository Contents

- `logstash_config.yml`: Example configuration file for connecting to Logstash.
- `logger_sample_app.rb`: Example Ruby code for configuring log shipping to Logstash.
- `logstash.conf`:  File for your Logstash configuration. Add your specific Logstash configuration here. This will be used in configuring ELK stack.

## Conclusion

By following the instructions in this repository, you can configure your Ruby application to ship logs to Logstash in the ELK stack. 

Logstash provides powerful capabilities for filtering, parsing, and enriching log data, while Elasticsearch and Kibana enable you to store and visualize the logs effectively. 

With this setup, you'll have a comprehensive log management system that can help you gain valuable insights and troubleshoot issues.

Please refer to the provided code and configuration files for a practical implementation.


## About Me

This is developed with ❤️ by **Rao Waqas Akram**. 
Visit my blog on [Hashnode](https://raowaqasakram.hashnode.dev/) and 
Connect with me on [LinkedIn](https://www.linkedin.com/in/raowaqasakram/).
