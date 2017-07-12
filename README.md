# Docker for Node.js Projects

## Folder Structure

The project folder should be as such:
```
Project Folder
  ├─README.md
  ├─Dockerfile
  ├─nodejs-project.yml
  ├─app.js
  ├─package.json
  └─<other nodejs codes files, etc.>
```

### Volume mapping for /usr/src/app

The container's */usr/src/app* has been mapped to the root of the *Project Folder*. This allow codes to be edited on the host computer while having changes reflected in the Node.js application. Server-side codes will still require the container to be restarted.

### /usr/src/app/node_modules trickery

A docker volume mapping has been declared for container's */usr/src/node_modules* directory. **Do not** manually map this directory to your host computer as this would break the installed Node.js modules.

The trickery is to map */usr/src/app* to the host computer while leaving the sub-directory (*/usr/src/app/node_modules*) unmapped.

## Docker container

### Building the project for the first time
```
docker-compose -f .\nodejs-project.yml build
```

### Running the project
```
docker-compose -f .\nodejs-project.yml up
```

### Stopping the project
```
docker-compose -f .\nodejs-project.yml stop
```