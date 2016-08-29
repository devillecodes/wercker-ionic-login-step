# ionic-login

This step vendors the Ionic CLI, and allows the user to execute the
login command. Options are passed along to the `ionic` executable as is.

# Prerequisites:

* Requires the Ionic CLI installed. Install it either as part of the pipeline, or make use of a Docker image that has it pre-installed, such as [devillex/docker-ionic](https://hub.docker.com/r/devillex/docker-ionic/).

# Options:

* `email` - Email used to sign in on Ionic.io.
* `password` - Password used to sign in on Ionic.io.
* `debug` - (Optional) Prints out the command that is executed to the console. **Warning this prints the everything in the clear, including the password.** Possible values are `true` or `false`. Defaults to `false`.

# Example

```yml
deploy:
    steps:
      - ionic-login:
          email: $IONIC_EMAIL
          password: $IONIC_PASSWORD
```

# License

The MIT License (MIT)

# Changelog

## 1.0.1

- Fix typo in `run.sh`

## 1.0.0

- Initial release
