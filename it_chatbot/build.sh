docker build -t it-chatbot:1.0 .
#docker push $IMAGE
docker run -p 3000:3000 -d it-chatbot:1.0
