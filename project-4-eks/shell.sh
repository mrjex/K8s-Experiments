
# Build
docker build -t python-test .

# Run
docker run python-test

# Push to Docker Hub
docker tag python-test:latest mrjex/my-repository:latest

docker login

docker push mrjex/my-repository:latest