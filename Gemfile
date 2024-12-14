# frozen_string_literal: true

source "https://rubygems.org"

# adding these gems to silence warnings
gem 'csv', '~> 3.3.0'
gem 'logger', '~> 1.6'
gem 'base64'
gem 'jekyll-compose'
gem "webrick", "~> 1.8"

gem "jekyll-theme-chirpy", "~> 7.1", ">= 7.1.1"

gem "html-proofer", "~> 5.0", group: :test

platforms :mingw, :x64_mingw, :mswin, :jruby do
  gem "tzinfo", ">= 1", "< 3"
  gem "tzinfo-data"
end

gem "wdm", "~> 0.2.0", :platforms => [:mingw, :x64_mingw, :mswin]
