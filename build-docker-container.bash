cd backend_Project/ && docker-compose run backend django-admin startproject backend .
cd ..
docker-compose build --no-cache
docker-compose up -d
cd frontend_Project/
docker-compose run --rm frontend sh -c "npm install -g create-react-app && create-react-app frontend"
cd ..
docker-compose down
docker-compose build --no-cache
