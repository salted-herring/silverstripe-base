# silverstripe-base
Our silverstripe base kit.

[![buddy pipeline](https://ci.saltedherring.nz/salted-herring/silverstripe-base/pipelines/pipeline/5/badge.svg?token=de75419e35f68e04d19b2a214121b8d76f788c2b3e0261dada06baf6f8558c15 "buddy pipeline")](https://ci.saltedherring.nz/salted-herring/silverstripe-base/pipelines/pipeline/5)

## Documentation

### Front end

 * [sass](docs/en/scss.md)

### Behat Setup

We use the SilverStripe behat extension for testing: https://github.com/silverstripe/silverstripe-behat-extension/tree/8bb5ff5a1fe5f7fdd12f1f3fe6e4a8200c890a28

Under the config folder, you will find a behat.sample.yml file. Copy this to config/behat.yml, changing settings to match your local setup.

```yaml
default:
  suites: []
  extensions:
    SilverStripe\BehatExtension\Extension:
      bootstrap_file: cms/tests/behat/serve-bootstrap.php
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
