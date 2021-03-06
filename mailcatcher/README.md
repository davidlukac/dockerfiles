# Mailcatcher

```Dockerfile
FROM quay.io/continuouspipe/mailcatcher:stable
```

- Port 1025 is where mail should be relayed to (SMTP).
- Port 1080 is where you can visit the UI.

Example `docker-compose` configuration:

```
mailcatcher:
    image: quay.io/continuouspipe/mailcatcher:stable
    extra_hosts:
        - "mailcatcher:127.0.0.1"
    expose:
        - 1025
    ports:
        - "1080:1080"
```

Then in `parameters.yml` (in case of Symfony application):

```
mailer_transport: smtp
    mailer_host: mailcatcher
    mailer_user: null
    mailer_password: null
    mailer_sender_mail: some@email.com
    mailer_port: 1025
    mailer_encryption: null
```
