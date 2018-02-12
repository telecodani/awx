# AWX

Unattended script to deploy the last stable version of Ansible AWX on Docker images.

## Getting Started

Following the instructions you will get you a copy of the AWX project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

Operative system: CentOS Linux release 7.4.1708, 64b.
Internet connection.
Check your OS:
```
cat /etc/system-release
```
The output must be CentOS Linux release 7.4.1708 (Core) and 64b. On other releases the script may not work, run under your responsibility.

### Installing

Clone the repository and run the script.

```
git clone https://github.com/telecodani/AWX
cd AWX
sh AWX.sh
```
If you want to deploy a specific version of AWX, you can change the Github repo on the line 8.
```
git clone https://github.com/ansible/awx
```
## Running the tests

Once the script end, you can check the remaining process that still running on the backend finishing the installation.

```
docker logs -f awx_task
```
Wait until finish, you will notice that the output will apears like this on:

...
'application/json', 'utf-8') kwargs:{})
2018-02-12 17:34:24,035 DEBUG    awx.main.scheduler Running Tower task manager.
2018-02-12 17:34:24,051 DEBUG    awx.main.scheduler Starting Scheduler
....

Then you can access to http:/localhost or http://yourserverip, by default the access user is admin, password. The service by default will be deployed on the port 80.

## Deployment

Unattended script to deploy the last stable version of Ansible AWX on Docker images, or the version what do you specify on the script using the oficial AWX Github repositories.

## Contributing

 -- Under construction --

## Versioning

 -- Under construction --

## Authors

* **Dani Vrenceanu** - *Initial work* - [Telecodani](https://github.com/telecodani)

## License (AWX)

[Apache v2](https://github.com/ansible/awx/blob/devel/LICENSE.md)

## Acknowledgments

* DevOps
