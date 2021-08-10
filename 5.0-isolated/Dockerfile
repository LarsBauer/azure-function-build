FROM mcr.microsoft.com/dotnet/sdk:5.0

# add dotnet global tools to path
ENV PATH="$PATH:/root/.dotnet/tools"

# openjdk installation fails if this directory does not exist
RUN mkdir -p /usr/share/man/man1

# add Microsoft package sources
RUN wget https://packages.microsoft.com/config/debian/10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb \
    && dpkg -i packages-microsoft-prod.deb \
    && rm packages-microsoft-prod.deb

# install required packages
RUN apt-get update \
    && apt-get install -y zip openjdk-11-jre

# install dotnet sdk 3.1
# https://github.com/Azure/azure-functions-dotnet-worker/wiki/Known-issues#net-core-31-dependency
RUN apt-get update \
    && apt-get install -y dotnet-sdk-3.1

# install SonarScanner
RUN dotnet tool install --global dotnet-sonarscanner

# install Azure CLI
RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash