FROM mcr.microsoft.com/dotnet/sdk:3.1

ENV PATH="$PATH:$HOME/.dotnet/tools"

# install Java
RUN apt-get update && apt-get install -y openjdk-11-jre

# install SonarScanner
RUN dotnet tool install --global dotnet-sonarscanner

# install Azure CLI
RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash

# install Azure Functions Core Tools
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - \
    && apt-get install -y nodejs \
    && npm install -g azure-functions-core-tools@3 --unsafe-perm true