#
# Cookbook Name:: ffmpeg
# Recipe:: package
#
# Copyright 2014, Escape Studios
#

apt_repository "ffmpeg" do
  uri "http://ppa.launchpad.net/mc3man/trusty-media/ubuntu"
  distribution node["lsb"]["codename"]
  components ["main"]
  keyserver "keyserver.ubuntu.com"
  key "ED8E640A"
  # notifies :run, "execute[apt-get update]", :immediately
end

apt_package "ffmpeg" do
  options "--force-yes"
  :upgrade
end
