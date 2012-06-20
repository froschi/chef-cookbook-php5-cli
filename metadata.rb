maintainer       "Thorsten Fischer"
maintainer_email "thorsten@froschi.org"
license          "Apache 2.0"
description      "Installs/Configures php5-cli"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

%w/ubuntu/.each { |os| supports os }

depends          "libbz2", ">= 0.0.1"
depends          "libcomerr", ">= 0.0.1"
depends          "libdb", ">= 0.0.1"
depends          "libedit", ">= 0.0.1"
depends          "libgssapi-krb5", ">= 0.0.1"
depends          "libkrb5", ">= 0.0.1"
depends          "libmagic", ">= 0.0.1"
depends          "libncurses", ">= 0.0.1"
depends          "libpcre", ">= 0.0.1"
depends          "libssl", ">= 0.0.1"
depends          "libxml2", ">= 0.0.1"
depends          "mime-support", ">= 0.0.1"
depends          "php5-common", ">= 0.0.1"
depends          "tzdata", ">= 0.0.1"
depends          "ucf", ">= 0.0.1"
