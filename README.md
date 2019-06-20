# axiom-coding-challenge 

# Technologies used
- Docker [https://docs.docker.com/install/linux/docker-ce/ubuntu/]
- Docker-Compose [https://docs.docker.com/compose/install/]
- Justification:
  1. Docker is lightweight and portable.
  2. Docker runs on any linux system hence it is operation system agnostic.
  3. System resources are used according to the hits on the endpoints, hence leading to proper usage of system resources like CPU and memory.

# Commands
- git clone https://github.com/jyotibhanot30/axiom-coding-challenge.git
- cd axiom-coding-challenge
- docker-compose up -d
- curl localhost:81/airports
- curl localhost:82/countries

