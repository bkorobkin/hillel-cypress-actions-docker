FROM cypress/browsers:node-20.9.0-chrome-118.0.5993.88-1-ff-118.0.2-edge-118.0.2088.46-1

RUN apt-get update && apt-get install -y google-chrome-stable

WORKDIR /app

COPY . /app

RUN npm install

CMD ["npx", "cypress", "run", "--browser", "chrome"]


# docker build -t cypress-chrome .
# docker run -it --rm cypress-chrome
