# Use the official image as a parent image.
FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build-env

# Set the working directory.
WORKDIR /app

# Copy the file from your host to your current location.
COPY src .

# Run the command inside your image filesystem.
# RUN dotnet restore
RUN dotnet publish -c Release -r linux-x64 --no-self-contained

# Run the command inside your image filesystem.
FROM mcr.microsoft.com/dotnet/aspnet:7.0

WORKDIR /app
COPY --from=build-env /app/SS14.Admin/bin/Release/net7.0/linux-x64/publish/ /app/

# Inform Docker that the container is listening on the specified port at runtime.
EXPOSE 27689

ENV ASPNETCORE_URLS=http://*:27689

# Run the specified command within the container.
CMD ["./SS14.Admin"]
