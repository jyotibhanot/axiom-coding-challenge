# axiom-coding-challenge 

# Technologies used
- Docker [https://docs.docker.com/install/linux/docker-ce/ubuntu/]
- Docker-Compose [https://docs.docker.com/compose/install/]
- Justification:
  1. Docker is lightweight and portable.
  2. Docker runs on any linux system hence it is operation system agnostic.
  3. System resources are used according to the hits on the endpoints, hence leading to proper uasge of system resources like CPU and memory.

# Prerequisites 
- Docker-CE
- Docker-Compose

# Commands
- git clone https://github.com/jyotibhanot30/axiom-coding-challenge.git
- cd axiom-coding-challenge
- docker-compose up -d
- curl localhost:8000/countries
- curl localhost:8000/airports

# Notes
1. Isolation of services is achieved through separate docker images.
   - jyotibhanot30/airports-assembly:1.0.1
   - jyotibhanot30/airports-assembly:1.1.0
   - jyotibhanot30/countries-assembly:1.0.1

2. The application is mapped to port 8000 of the host and some of the endpoints are listed below:
   - localhost:8000/countries
   - localhost:8000/countries/IND
   - localhost:8000/countries/health/live
   - localhost:8000/countries/health/ready
   - localhost:8000/airports
   - localhost:8000/airports/health/live
   - localhost:8000/airports/health/ready

3. Each of the endpoints(countries, airports) is protected from the outside world and can be accessed only through the
   reverse proxy( nginx in this case).

4. Updation of airports endpoint can be done by simply changing the tag in docker-compose.yml file and restarting the application using the following commands:
   - docker-compose down
   - docker-compose up -d
   [ The above commands need to be run from the path where docker-compose.yml file exists.]

# TODO
- Verification of following endpoints:
  1. /airports?full=[0|1] 
  2. /airports/EHAM
This is due to the faulty jar file which does not seem to work.

