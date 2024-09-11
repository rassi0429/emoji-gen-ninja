FROM nikolaik/python-nodejs:python3.7-nodejs14
RUN apt update
RUN apt -y install default-mysql-client-core
RUN apt -y install libopencv-dev
COPY . .
RUN cd server && pip install -r requirements.txt --index-url https://repo.fury.io/emoji-gen/ --extra-index-url https://pypi.org/simple
RUN ["bash"]