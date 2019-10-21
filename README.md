# spring-boot-microservices-series
Code for SpringBoot MicroServices Blog Series

## How to run?

### Build all modules:

`spring-boot-microservices-series> ./mvnw clean package -DskipTests=true`

### Start infrastructure modules in docker:

`spring-boot-microservices-series> docker-compose up -d mysqldb rabbitmq setup-vault config-server service-registry hystrix-dashboard`

**Start each microservice either in local or in docker:**

**Local:** `spring-boot-microservices-series/catalog-service> ./mvnw spring-boot:run`

**Docker:** `spring-boot-microservices-series> docker-compose up -d <service> --build --force-recreate`

Ex: `spring-boot-microservices-series> docker-compose up -d catalog-service --build --force-recreate`


* MySQL container:
     * hostname: mysqldb
     * Ports : 3306:3306 (<host_port>:<container_port>)
     * Username/Password: root/admin

* RabbitMQ:
     * hostname: rabbitmq
     * Ports: 5672:5672, 15672:15672
     * Admin UI: http://localhost:15672
     * Username/password: guest/guest

* Vault:
    * hostname: vault
    * Ports: 8200:8200
    * Root token: 934f9eae-31ff-a8ef-e1ca-4bea9e07aa09

* config-server:
    * hostname: config-server
    * Ports: 8888:8888
    * URL: http://localhost:8888/

* service-registry:
    * hostname: service-registry
    * Ports: 8761:8761
    * URL: http://localhost:8761/
    
* hystrix-dashboard:
    * hostname: hystrix-dashboard
    * Ports: 8788:8788
    * URL: http://localhost:8788/hystrix

* catalog-service:
    * hostname: catalog-service
    * Ports: 18181:8181
    * URL: http://localhost:18181
    
* inventory-service   
    * hostname: inventory-service
    * Ports: 18282:8282
    * URL: http://localhost:18282
    
* order-service  
    * hostname: order-service
    * Ports: 18383:8383
    * URL: http://localhost:18383 
    
* shoppingcart-ui    
    * hostname: shoppingcart-ui
    * Ports: 18080:8080
    * URL: http://localhost:18080

     # Shopping UI

    ![alt text](/screenshot/homepage.png)

# How does Microservice Architecture look like?

This is how a monolith would look like. One application for everything.

![alt text](/screenshot/MonolithApplication.png)

### This is how the same application would look like when developed using Microservices Architecture.

![alt text](/screenshot/MicroservicesArchitectureSplit.png)

### Microservice Architectures involve a number of small, well designed, components interacting with messages.

![alt text](/screenshot/Microservices-Chain-Example.png)

# Advantages of Microservices

New Technology & Process Adaption becomes easier. You can try new technologies with the newer microservices that we create.

Faster Release Cycles

Scaling with Cloud

# In this Spring Boot microservices example, 

Eureka Service- This service will register every microservice and then the client microservice will look up the Eureka server to get a dependent microservice to get the job done. This Eureka Server is owned by Netflix and in this, Spring Cloud offers a declarative way to register and invoke services by Java annotation.


Item Catalog Service - This service will generate the list of sports brands which are popular in the market.

Edge Service - It is similar to the standalone Item service created in Bootiful Development with Spring Boot and Angular. However, it will have fallback capabilities which prevent the client from receiving an HTTP error when the service is not available


# Challenges with Microservice Architectures

While developing a number of smaller components might look easy, there are a number of inherent complexities that are associated with microservices architectures.


# Challenges With Microservice Architecture

While developing a number of smaller microservices might look easy, there is a number of inherent complexities that are associated with microservices architectures. Let's look at some of the challenges:

Automating the Components: It becomes difficult to automate everything because there are a number of smaller components instead of a monolith, i.e. builds, deployment, monitoring, etc.


Perceptibility: There is a number of small components to deploy and maintain which sometimes becomes difficult to monitor and identify problems. It requires great perceptibility around all the components.


Configuration Management: There is a great need to maintain the configurations for the components across the various environments.
Debugging: It becomes difficult to probe each and every service for an error. Centralized Logging and Dashboards are essential to make it easy to debug problems.


Consistency: You cannot have a wide range of tools solving the same problem. While it is important to foster innovation, it is also important to have some decentralized governance around the languages, platforms, technology and tools used for implementing/deploying/monitoring microservices.
Building Architecture for Top Sports Brands With Spring Boot



# Lets look at some of the challenges development:

Quick Setup needed : You cannot spend a month setting up each microservice. You should be able to create microservices quickly.
Automation : Because there are a number of smaller components instead of a monolith, you need to automate everything - Builds, Deployment, Monitoring etc.

Visibility : You now have a number of smaller components to deploy and maintain. Maybe 100 or maybe 1000 components. You should be able to monitor and identify problems automatically. You need great visibility around all the components.

Bounded Context : Deciding the boundaries of a microservice is not an easy task. Bounded Contexts from Domain Driven Design is a good starting point. Your understanding of the domain evolves over a period of time. You need to ensure that the microservice boundaries evolve.

Configuration Management : You need to maintain configurations for hundreds of components across environments. You would need a Configuration Management solution

Dynamic Scale Up and Scale Down : The advantages of microservices will only be realized if your applications can scaled up and down easily in the cloud.

Pack of Cards : If a microservice at the bottom of the call chain fails, it can have knock on effects on all other microservices. Microservices should be fault tolerant by Design.

Debugging : When there is a problem that needs investigation, you might need to look into multiple services across different components. Centralized Logging and Dashboards are essential to make it easy to debug problems.

Consistency : You cannot have a wide range of tools solving the same problem. While it is important to foster innovation, it is also important to have some decentralized governance around the languages, platforms, technology and tools used for implementing/deploying/monitoring microservices.

