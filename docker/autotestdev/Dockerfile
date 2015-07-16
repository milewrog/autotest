FROM autotestbase

# Expose the rails server port so that we can look at the app from outside the container.
EXPOSE 3000

# Run rails server.
CMD ["bash", "-l", "-c", "cd /opt/autotest ; bin/rails s -b 0.0.0.0 -p 3000"]
