#!/bin/bash
cd booking-service/
mvn -N io.takari:maven:wrapper 
mvn package -DskipTests
cd ..
cd gateway-service/
mvn -B package -DskipTests
cd ..
cd hotel-service/
mvn -B package -DskipTests
cd ..
cd loyalty-service/
mvn -B package -DskipTests
cd ..
cd payment-service/
mvn -B package -DskipTests
cd ..
cd report-service/
mvn -B package -DskipTests
cd ..
cd session-service/
mvn -B package -DskipTests
cd ..