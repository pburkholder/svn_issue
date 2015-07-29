#
# Cookbook Name:: svn_issue
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

include_recipe 'subversion'

# https://docs.chef.io/resource_subversion.html
subversion 'CouchDB Edge' do
  repository 'http://svn.apache.org/repos/asf/couchdb/trunk'
  revision 'HEAD'
  # destination '/opt/mysources/couch'
  action :sync
end
