@echo off
echo Building all microservices...

echo Building discovery-server...
cd discovery-server
call mvn clean package -DskipTests
if %errorlevel% neq 0 (
    echo FAILED to build discovery-server
    pause
    exit /b 1
)
cd ..

echo Building config-server...
cd config-server
call mvn clean package -DskipTests
if %errorlevel% neq 0 (
    echo FAILED to build config-server
    pause
    exit /b 1
)
cd ..

echo Building api-gateway...
cd api-gateway
call mvn clean package -DskipTests
if %errorlevel% neq 0 (
    echo FAILED to build api-gateway
    pause
    exit /b 1
)
cd ..

echo Building user-service...
cd user_service
call mvn clean package -DskipTests
if %errorlevel% neq 0 (
    echo FAILED to build user-service
    pause
    exit /b 1
)
cd ..

echo Building notification-service...
cd notification-service
call mvn clean package -DskipTests
if %errorlevel% neq 0 (
    echo FAILED to build notification-service
    pause
    exit /b 1
)
cd ..

echo All microservices built successfully!
pause
