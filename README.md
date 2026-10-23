# camest

HOA Management for Cambridge Estates 

[![Built with Cookiecutter Django](https://img.shields.io/badge/built%20with-Cookiecutter%20Django-ff69b4.svg?logo=cookiecutter)](https://github.com/cookiecutter/cookiecutter-django/)
[![Black code style](https://img.shields.io/badge/code%20style-black-000000.svg)](https://github.com/ambv/black)

License: MIT

## Settings

Moved to [settings](http://cookiecutter-django.readthedocs.io/en/latest/settings.html).

## Basic Commands

### Setting Up Your Users

- To create a **normal user account**, just go to Sign Up and fill out the form. Once you submit it, you'll see a "Verify Your E-mail Address" page. Go to your console to see a simulated email verification message. Copy the link into your browser. Now the user's email should be verified and ready to go.

- To create a **superuser account**, use this command:

      $ python manage.py createsuperuser

For convenience, you can keep your normal user logged in on Chrome and your superuser logged in on Firefox (or similar), so that you can see how the site behaves for both kinds of users.

### Type checks

Running type checks with mypy:

    $ mypy camest

### Test coverage

To run the tests, check your test coverage, and generate an HTML coverage report:

    $ coverage run -m pytest
    $ coverage html
    $ open htmlcov/index.html

#### Running tests with pytest

    $ pytest

### Live reloading and Sass CSS compilation

Moved to [Live reloading and SASS compilation](https://cookiecutter-django.readthedocs.io/en/latest/developing-locally.html#sass-compilation-live-reloading).

## Deployment

The following details how to deploy this application.

## Secrets

1Password (account `tkhllc`) is the only source of truth for secrets. This repo reads: homelab-apps, homelab-notify (see .env.tpl).

- Local dev: `op inject -i .env.tpl -o .env` (rendered `.env` is gitignored, mode 600).
- One-offs: `op run --env-file .env.tpl -- <cmd>`.
- Never hand-write a secret value into a file, chat or argv. Create the 1Password item first, then reference it as `op://<vault>/<item>/<field>` in `.env.tpl`.
- On homelab hosts the `op-render` manifest owns the rendered file.
- Before committing: `gitleaks detect --no-git --redact --source .` must report 0.
- Convention: homelab-main `docs/security/secrets-management-1password.md`.
