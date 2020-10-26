# Listmonk Heroku deploy button

Listmonk is a self-hosted newsletter + mailing list manager.
Visit the project's website at https://listmonk.app, or find the source code at https://github.com/knadh/listmonk

This Heroku deploy button allows you to deploy your own [listmonk](https://listmonk.app/) instalaton to Heroku.

### [v0.7.0-alpha](https://github.com/knadh/listmonk/releases/tag/v0.7.0-alpha)
[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/bumi/listmonk-heroku)

## Things you shoud know

### Configuration
The button requires a minimum of configuration variables. You have to set further configuration variables to be able to send emails.
See [Listmonk configuration](https://github.com/knadh/listmonk/wiki/Configuration#environment-variables) for details and available options.

Alternatively you can fork this repository and adjust config/listmonk.toml.erb and deploy it from your fork: `https://heroku.com/deploy?template=https://github.com/[YOUR REPOSITORY]`


### Database size
Currently a PostgreSQL hobby add-on will be used. For production use with more than a few thousand subscribers you will need to upgrade the add-on.

### Listmonk uses http basic auth
Currently listmonk does not have any user authentication. We use nginx basic auth to secure the admin interface. (You have to set a username and password (max 8 characters) during deployment)

## Links:

* [Listmonk website](https://listmonk.app)
* [Listmonk repository](https://github.com/knadh/listmonk)

