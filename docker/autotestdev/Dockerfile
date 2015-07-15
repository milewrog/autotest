FROM ubuntu:14.04

# Install tools and libraries.
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -qy --force-yes --no-install-recommends \
  build-essential \
  curl \
  git \
  libmysqlclient-dev \
  libssl-dev \
  mysql-client \
  libreadline-dev

# Install rbenv.
ENV PATH /root/.rbenv/bin:$PATH
RUN git clone git://github.com/sstephenson/rbenv.git /root/.rbenv
RUN git clone git://github.com/sstephenson/ruby-build.git /root/.rbenv/plugins/ruby-build
RUN /root/.rbenv/plugins/ruby-build/install.sh
RUN echo 'eval "$(rbenv init -)"' >> /etc/profile.d/rbenv.sh
RUN echo 'eval "$(rbenv init -)"' >> /root/.bashrc

# Install ruby.
RUN CONFIGURE_OPTS=--disable-install-doc rbenv install 2.2.2
RUN rbenv global 2.2.2

# Install bundler.
RUN echo "gem: --no-ri --no-rdoc" > /root/.gemrc
RUN bash -l -c "gem install bundler"

# Expose the rails server port so that we can look at the app from outside the container.
EXPOSE 3000

# Run rails server.
CMD ["bash", "-l", "-c", "cd /opt/autotest ; bin/rails s -b 0.0.0.0 -p 3000"]
