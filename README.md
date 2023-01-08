
# miso

central user management service for **KaratsubaLabs**

## RUNNING FOR DEVELOPMENT

First copy the example environment file and make any adjustments
```sh
cp dotenv.example env
```

To run the container for the postgres database:
```
docker-compose up -d
```

Then to run miso
```sh
cabal run miso
```

## RESOURCES


