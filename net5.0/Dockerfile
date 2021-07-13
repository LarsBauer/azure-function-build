FROM mcr.microsoft.com/dotnet/sdk:5.0

# add dotnet global tools to path
ENV PATH="$PATH:/root/.dotnet/tools"

# openjdk installation fails if this directory does not exist
RUN mkdir -p /usr/share/man/man1

# install required packages
RUN apt-get update \
    && apt-get install -y zip openjdk-11-jre

# install SonarScanner
RUN dotnet tool install --global dotnet-sonarscanner

# install Azure CLI
RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash