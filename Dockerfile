FROM node

WORKDIR /developer/nodejs/flights-service 

COPY . .

RUN npm ci

CMD ["npm", "run", "dev"]



# docker build -t flights-service .
# docker run -it --init -p 3000:3000 -v "D:\CODE\P_Ft\Flights://developer/nodejs/flight-service" flight-service

# docker volume create flights-service-node-modules
# docker run -it --init --name flights_service -p 3000:3000 -v "D:\CODE\P_Ft\Flights://developer/nodejs/flight-service" -v flights-service-node-modules://developer/nodejs/flights-service/node_modules flights-service 

# docker run -it --init --name flights_service --network microservice-network -p 3000:3000 -v "D:\CODE\P_Ft\Flights://developer/nodejs/flight-service" -v flights-service-node-modules://developer/nodejs/flights-service/node_modules flights-service 
