# Render: op inject -i .env.tpl -o .env   (TODO-* items do not exist yet; create in 1Password first)
DJANGO_SECRET_KEY={{ op://homelab-apps/TODO-camest-django-secret-key/credential }}
MAILGUN_API_KEY={{ op://homelab-notify/TODO-camest-mailgun-api-key/credential }}
MAILGUN_DOMAIN=
DJANGO_ADMIN_URL=
DJANGO_GCP_STORAGE_BUCKET_NAME=
REDIS_URL=
DATABASE_URL=
