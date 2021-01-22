# azure-function-build
This image is based on [dotnet/sdk:3.1](https://hub.docker.com/_/microsoft-dotnet-sdk/ ) from Microsoft and contains the following tools:
* [SonarScanner for .NET](https://docs.sonarqube.org/latest/analysis/scan/sonarscanner-for-msbuild/) (available as .NET global tool) for code analysis
* Azure CLI for authentication and configuration
* Azure Function Core Tools for deployment
