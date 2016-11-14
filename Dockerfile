FROM msa-image-python:1.0.0

# Install the Python dependencies
ADD httpbin/requirements.txt /opt/app/
RUN apk --update add --virtual build-dependencies python3-dev build-base \
  && pip install -r /opt/app/requirements.txt \
  && apk del build-dependencies

# Override the default endpoints
ADD README.md NAME LICENSE VERSION /opt/app/
ADD swagger.json /opt/swagger/swagger.json

# Copy all the other application files to /opt/app
ADD run.sh /opt/app/
ADD httpbin /opt/app/

# Execute the run script
CMD ["ash", "/opt/app/run.sh"]
