FROM nwtgck/rvm-ruby:1.9.3
RUN rvm reinstall 1.9.3-p551 --patch https://gist.githubusercontent.com/crftr/7a8f8873fcb1469c1d02c572e00a13a9/raw/ee187756fbc855ec7447d1a476515a2c443260d1/openssl_tls_1.2.patch
RUN apt-get update
RUN apt-get -y install g++
RUN apt-get -y install libcurl4-openssl-dev
RUN apt-get -y install mysql-client
RUN apt-get -y install libmysqlclient-dev
RUN gem install bundler -v 1.13.5
