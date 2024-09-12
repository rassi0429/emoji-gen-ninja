FROM nikolaik/python-nodejs:python3.7-nodejs14
WORKDIR /app
RUN apt update
RUN apt -y install default-mysql-client-core libopencv-dev
COPY . .
RUN cd server && pip install -r requirements.txt --index-url https://repo.fury.io/emoji-gen/ --extra-index-url https://pypi.org/simple
RUN cd frontend && npm install && npm run build
CMD ["python", "server/app.py"]