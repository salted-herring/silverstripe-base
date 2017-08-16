# silverstripe-base
Our silverstripe base kit.

[buddy pipeline](https://ci.saltedherring.nz/salted-herring/silverstripe-base/pipelines/pipeline/5)

## Documentation

### Project Setup
The project contains a docker compose file allowing you to run a local test environment. In order to utilise this, you should set up a project folder structure like so:

- project name
-- www
-- log
-- utils

Clone this repository into the *www* directory.

Copy the *utils* directory provided in the repository to the root directory.

This folder contains a script to allow you to backup the database. Each time you run `docker-compose up`  the docker file will pick up db.sql & import into the appropriate database.

So initially, you should provide a db.sql dump that contains the database dump (including any grant permissions). 

If you plan on using the *dump.sh* script in the future, make sure you update grant.sql with the user details you wish.

Then copy the *docker-compose.yml* file to the root folder.

From inside the project root folder, you can run the container via:

`docker-compose up`

You should then be able to get the site up and running at the port specified in the docker-compose file (initially set to localhost:8080)

### Backing up the db

You can back up the db in the following way:

```
cd project-root
docker-compose exec web bash
cd utils
./dump.sh
```

You then have a db.sql file set up in case you need to pull down this container & start again.

### Front end

* [sass](docs/en/scss.md)

### Behat Setup
We use the SilverStripe behat extension for testing: https://github.com/silverstripe/silverstripe-behat-extension/tree/8bb5ff5a1fe5f7fdd12f1f3fe6e4a8200c890a28

Under the config folder, you will find a behat.sample.yml file. Copy this to config/behat.yml, changing settings to match your local setup.

```yaml
default:
  extensions:
    SilverStripe\BehatExtension\Extension:
      framework_path: ../framework
      screenshot_path: %behat.paths.base%/artifacts/screenshots
    SilverStripe\BehatExtension\MinkExtension:
      # Adjust this to your local environment
      base_url:  http://%BASE_URL%/
      default_session: selenium2
      javascript_session: selenium2
      selenium2:
        browser: firefox
        wd_host: http://selenium:4444/wd/hub
```

The main options to configure here are base_url & wd_host. If you are testing locally, you should be able to get away
with removing the wd_host option (it should understand that you'll be running selenium at localhost:4444)
