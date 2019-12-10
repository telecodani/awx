# AWX

Unattended script to deploy the last Ansible AWX stable version on Docker images.

## Getting Started

Follow the instructions and get a copy of the AWX project up and running on a local machine.

### Prerequisites

Operative system: CentOS Linux release 7.4.1708, 64b or above. All the prerequisites will be installed by the awx script.

### Installation

Clone the repository and run the script.

```
git clone https://github.com/telecodani/AWX
cd AWX
sh AWX.sh
```
If you want to deploy a specific version of Awx, you can change the 9th line of the awx script with a specified version of Awx. You will need to check the awx source first.
```
(line 9) git clone https://github.com/ansible/awx
```

## Running the tests

You will be able to lunch some tests to check the background remaining tasks but once the script will end.

```
docker logs -f awx_task
```
Wait until you'll notice that the output will look like this entries:

```
'application/json', 'utf-8') kwargs:{})
2018-02-12 17:34:24,035 DEBUG    awx.main.scheduler Running Tower task manager.
2018-02-12 17:34:24,051 DEBUG    awx.main.scheduler Starting Scheduler
```
Then you'll be able to access to http://localhost or http://yourserviceip. By default the access user is admin and password is password. The service will be deployed on the port 80 by default (on the next release I'll implement a change on the script where you will be able to change the port).

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
