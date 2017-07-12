# Docker for Node.js Projects

## Folder Structure

The project folder should be as such
```
Project Folder
  ├─README.md
  ├─Dockerfile
  ├─nodejs-project.yml
  └─<nodejs codes files, etc.>
```

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