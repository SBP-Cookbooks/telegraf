#
# Cookbook Name:: telegraf
# Recipe:: default
#
# Copyright 2015-2017 NorthPage
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

telegraf_install 'default' do
  include_repository lazy { node['telegraf']['include_repository'] }
  install_version lazy { node['telegraf']['version'] }
  install_type lazy { node['telegraf']['install_type'] }
  action :create
end

telegraf_config 'default' do
  path lazy { node['telegraf']['config_file_path'] }
  config lazy { node['telegraf']['config'] }
  outputs lazy { node['telegraf']['outputs'] }
  perf_counters lazy { node['telegraf']['perf_counters'] }
  inputs lazy { node['telegraf']['inputs'] }
  processors lazy { node['telegraf']['processors']}
  aggregators lazy { node['telegraf']['aggregators']}
end
