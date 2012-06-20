include_recipe "libbz2"
include_recipe "libdb"
include_recipe "libedit"
include_recipe "libmagic"
include_recipe "libpcre"
include_recipe "libssl"
include_recipe "libxml2"
include_recipe "mime-support"
include_recipe "php5-common"
include_recipe "tzdata"
include_recipe "ucf"

packages = Array.new

case node[:lsb][:codename]
when "lucid"
  include_recipe "libcomerr"
  include_recipe "libgssapi-krb5"
  include_recipe "libkrb5"
  include_recipe "libncurses"

  packages |= %w/
    php5-cgi
  /
when "precise"
  packages |= %w/
    php5-cgi
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
