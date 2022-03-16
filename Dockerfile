#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/sdk:5.0
WORKDIR /app
COPY  Tailspin.SpaceGame.Web/After/publish/Tailspin.SpaceGame.Web .
EXPOSE 5000
EXPOSE 50001
ENTRYPOINT ["dotnet", "Tailspin.SpaceGame.Web.dll"]
