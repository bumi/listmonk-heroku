# Listmonk Heroku deploy button

Listmonk is a self-hosted newsletter + mailing list manager.
Visit the project's website at https://listmonk.app, or find the source code at https://github.com/knadh/listmonk

This Heroku deploy button allows you to deploy your own [listmonk](https://listmonk.app/) instalaton to Heroku.

### [v0.7.0-alpha](https://github.com/knadh/listmonk/releases/tag/v0.7.0-alpha)
[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/bumi/listmonk-heroku)

## Things you shoud know

### Configuration
You must update the "Settings" and configure at least: 

* General > Root URL
* General > Logo URL
* Media uploads > Provider - Use S3!
* SMTP - Currently configuration from heroku email addons is not automatically loaded and must be configured here

### Database size
Currently a PostgreSQL hobby add-on will be used. For production use with more than a few thousand subscribers you will need to upgrade the add-on.

### Listmonk uses http basic auth
Currently listmonk does not have any user authentication. We use nginx basic auth to secure the admin interface. (You have to set a username and password (max 8 characters) during deployment)

## Links:

* [Listmonk website](https://listmonk.app)
* [Listmonk repository](https://github.com/knadh/listmonk)

