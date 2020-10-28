# Minecraft-Server K8 Deployment Scripts

## Overview
- DockerFile: Built on top of openJDK, see file for details (1.16.3 image size: 481MB)
- persistent-volume.yaml: K8 persistent volume allocation example (You will need to modify this and change the host path)
- persistent-claim.yaml: K8 persistent volume claim to be used by pods
- deployment.yaml: K8 Deployment script for deploying a single instance of the server along with the nodeport service

### NOTES:
Yes, you can bypass the persistent volume stuff by just adding hostpath directly into the deployment.yaml, but I wanted mess around with it to see how it worked.