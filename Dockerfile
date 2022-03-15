#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/aspnet:5.0
WORKDIR /app
COPY  . .
RUN DIR
RUN DIR Tailspin.SpaceGame.Web/
RUN DIR Tailspin.SpaceGame.Web/app/
RUN DIR Tailspin.SpaceGame.Web/app/publish/
EXPOSE 80
EXPOSE 443
ENTRYPOINT ["dotnet", "/app/publish/Tailspin.SpaceGame.Web/Tailspin.SpaceGame.Web.dll"]
