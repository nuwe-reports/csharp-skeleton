#!/bin/bash

dotnet sonarscanner begin                                             \
  /k:"${PROJECT_ID}"                                                   \
  /d:sonar.host.url="${SONAR_HOST_URL}"                               \
  /d:sonar.login="${SONAR_TOKEN}"                                     \
  /d:sonar.coverageReportPaths="CoverageReport/SonarQube.xml"         \
  /d:sonar.dotnet.excludeTestProjects=true                            ;
  
dotnet restore                           ;

dotnet build -c Release --no-restore     ;

dotnet test --collect:"XPlat Code Coverage" -l:trx                    ;

reportgenerator                                                       \
  -reports:./test/**/coverage.cobertura.xml                          \
  -targetdir:./CoverageReport                                         \
  -reporttypes:'TextSummary;lcov;SonarQube'                           ;
  
dotnet publish src/WebApi/*.csproj                                    \
  -c Release                                                          \
  -o /app/publish --no-build --no-restore                             ;
  
dotnet sonarscanner end /d:sonar.login="${SONAR_TOKEN}"               ;

