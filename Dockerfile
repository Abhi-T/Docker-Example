FROM python:3.7

RUN pip install virtualenv
ENV VIRTUAL_ENV=/v-test
RUN virtualenv v-test -p python
ENV PATH="VIRTUAL_ENV/bin:$PATH"

WORKDIR /app
ADD . /app

# Install dependencies
RUN pip install -r requirements.txt

# copying all files over
COPY . /app

# Expose port 
ENV PORT 5000

# cmd to launch app when container is run

CMD python app/greetings.py
#CMD [ "python", "greetings.py" ]