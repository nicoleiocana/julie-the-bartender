# juliethebartender

This template is a minimal website intended for bartenders. It showcases their
profile picture; summarization of personalized, crafted drinks; a contact form
to establish communication for catering services; and a donation link.

The template assumes that you will deploy to [Heroku](https://id.heroku.com/login),
use [SendGrid](https://app.sendgrid.com/login), and utilize
[AWS Cloud 9](https://portal.aws.amazon.com/billing/signup#/start). If you have
any questions, comments, concerns, please feel free to email me.

## Getting started

To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install --without production
```

There is no database, but you may get a warning without migrating:

```
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

Once the test suite passes, you'll be ready to run the app in a local server:

```
$ rails s
```

Modify the owner, website name, favicon logo, donation link, and pictures to fit your needs.
Enjoy the template!  
Locations:  
- application_helper.rb
- _header.html.erb
- /assets/images
- favicon information:
  - favicon.json
- home.html.erb
- accolades.html.erb
- tip_me.html.erb
- new.html.erb
- mailing information:
  - message_mailer.rb
  - contact.html.erb
  - contact.txt.erb
  - development.rb
  - production.rb
