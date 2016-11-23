FROM msa-image-python:1.0.0

# Install the Python dependencies
ADD httpbin/requirements.txt /opt/ms/
RUN apk --update add --virtual build-dependencies python3-dev build-base \
  && pip install -r /opt/ms/requirements.txt \
  && apk del build-dependencies

# Override the default endpoints
ADD README.md NAME LICENSE VERSION /opt/ms/
ADD swagger.json /opt/swagger/swagger.json

# Copy all the other application files to /opt/ms
ADD run.sh /opt/ms/
ADD httpbin /opt/ms/

# Execute the run script
CMD ["ash", "/opt/ms/run.sh"]
