# AWX

Unattended script to deploy the last stable version of Ansible AWX on Docker images.

## Getting Started

These instructions will get you a copy of the AWX project up and running on your local machine.

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
If you want to deploy a specific version of AWX, you can change the Github repo on the line 8 with the AWX Github repo you need.
```
(line 8) git clone https://github.com/ansible/awx
```

## Running the tests

Once the script end, you can check the remaining process that still running on the backend until the installation end.

```
docker logs -f awx_task
```
Wait until you notice that the output will apears like this on:

...
'application/json', 'utf-8') kwargs:{})
2018-02-12 17:34:24,035 DEBUG    awx.main.scheduler Running Tower task manager.
2018-02-12 17:34:24,051 DEBUG    awx.main.scheduler Starting Scheduler
....

Then you can access to http:/localhost or http://yourserviceip, by default the access user is admin and password is password. The service by default will be deployed on the port 80 (on the next release I'll implement a change on the script where you will be able to change the port)

## Deployment

Unattended script to deploy the last stable version of Ansible AWX on Docker images, and manualy you can change the version of the AWX on the script using the oficial AWX Github repositories mentioned on the Instruction paragraph.

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
