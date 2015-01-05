#
# Cookbook Name:: ffmpeg
# Recipe:: package
#
# Copyright 2014, Escape Studios
#

#ffmpeg_packages.each do |pkg|
#  package pkg do
#    action :upgrade
#  end
#end

apt_repository "ffmpeg" do
  uri "http://ppa.launchpad.net/jon-severinsson/ffmpeg/ubuntu"
  distribution node["lsb"]["codename"]
  components ["main"]
  keyserver "keyserver.ubuntu.com"
  key "C300EE8C"
  notifies :run, "execute[apt-get update]", :immediately
end

apt_package "ffmpeg" do
  options "--force-yes"
  :upgrade
end
