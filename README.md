# azure-function-build

This image is based on [dotnet/sdk](https://hub.docker.com/_/microsoft-dotnet-sdk/) from Microsoft and contains the following tools:

- [SonarScanner for .NET](https://docs.sonarqube.org/latest/analysis/scan/sonarscanner-for-msbuild/) (available as .NET global tool) for code analysis
- Azure CLI for authentication and configuration

Supported versions:

| language                  | docker tag   |
| ------------------------- | ------------ |
| .NET Core 3.1             | 3.1          |
| .NET 5                    | 5.0          |
| .NET 5 (isolated process) | 5.0-isolated |
