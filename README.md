# AWX

Unattended script to deploy the last Ansible AWX stable version on Docker as a fresh install. As the last AWX was updated to be deployed in multiple ways, the scripts were updated with changes to deploy the AWX with Docker-Compose mode.

## Getting Started

Follow the instructions and get a copy of the AWX project up and running on a local machine.

### Prerequisites

MACHINE: 4 GB RAM, 2 CPU and 20 GB free space on disk.
SO: CentOS Linux x86_64 release: 7.4.1708, 7.7.1908  or 8.1.1911 (Core). All other prerequisites will be installed or updated by the AWX script.

### Installation

Clone the repository and run the script.

For Centos 7
```
git clone https://github.com/telecodani/AWX
cd AWX
sh AWX_7.sh
```

For Centos 8
```
git clone https://github.com/telecodani/AWX
cd AWX
sh AWX_8.sh
```

If you want to deploy a specific version of AWX, you can change one line of the AWX script with a specified version of AWX. You will have to check the AWX source first. Beware, the scripts were adapted to deploy the last stable version of AWX.
```
(line 29 on Cento 7 script) git clone https://github.com/ansible/awx
(line 34 on Cento 7 script) git clone https://github.com/ansible/awx
```

## Running the tests and checking the logs

You will be able to lunch some tests to check the background remaining tasks but only when the script will end.
```
docker logs -f awx_task
```

You'll notice that the output will look like this entries:
```
'application/json', 'utf-8') kwargs:{})
2018-02-12 17:34:24,035 DEBUG    awx.main.scheduler Running Tower task manager.
2018-02-12 17:34:24,051 DEBUG    awx.main.scheduler Starting Scheduler
```

You'll be able to access to http://localhost or http://yourserviceip once all tasks are donde. By default the user is "admin" and the password is "password". The service will be deployed on the port 80 by default (on the next releases I'll implement a change on the scripts where you will be able to change the port).

## Troubleshooting

On Centos 7:

This error may not damage the installation. Try to check the logs and check your service ip on port 80 if there is the AWX start running... 
```
"Error restarting project UnixHTTPConnectionPool..."
```

## Future deployments

-- Under construction --

## Contributing

 -- Under construction --

## Versioning

 -- Under construction --

## Authors

* **Dani Vrenceanu** - *Initial work* - [Telecodani](https://github.com/telecodani)

## License (AWX)

[Apache v2](https://github.com/ansible/awx/blob/devel/LICENSE.md)

## Acknowledgments

* DevOps culture.
