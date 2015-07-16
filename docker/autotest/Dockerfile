FROM docker_autotestbase

# Install application.
RUN git clone git://github.com/milewrog/autotest.git /opt/autotest

# Install required gems.
WORKDIR /opt/autotest
RUN bash -l -c 'bundle install --path=/opts/vendor_gems'

# Set up database.
WORKDIR /opt/autotest
RUN bash -l -c 'RAILS_ENV=production bin/rake db:create db:migrate db:seed'

# Expose the rails server port so that we can look at the app from outside the container.
EXPOSE 3000

# Run rails server.
# CMD ["bash", "-l", "-c", "cd /opt/autotest ; bin/rails s -b 0.0.0.0 -p 3000"]
CMD sleep 1000000
