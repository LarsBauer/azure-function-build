FROM mcr.microsoft.com/dotnet/sdk:3.1

# add dotnet global tools to path
ENV PATH="$PATH:/root/.dotnet/tools"

# install required packages
RUN apt-get update \
    && apt-get install -y zip openjdk-11-jre

# install SonarScanner
RUN dotnet tool install --global dotnet-sonarscanner

# install Azure CLI
RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash