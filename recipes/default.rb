packages = Array.new

case node[:lsb][:codename]
when "lucid"
  packages |= %w/
    php5-cli
  /
when "precise"
  packages |= %w/
    php5-cli
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
