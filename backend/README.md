# REM Registry Backend

## Prerequisites
- Java 17
- Maven (or use the included Maven Wrapper)
- PostgreSQL (local) for running the application

## Run tests
```bash
./mvnw test
```

## Run locally (without Docker)
1. Ensure PostgreSQL is running and available at the configured host/port.
2. Optionally set environment variables (defaults shown):
   - `DB_HOST` (default: `localhost`)
   - `DB_PORT` (default: `5432`)
   - `DB_NAME` (default: `rem_registry`)
   - `DB_USER` (default: `rem`)
   - `DB_PASSWORD` (default: `rempass`)
3. Start the app:
```bash
./mvnw spring-boot:run
```

## Run with Docker Compose
Docker Compose support will be added in the next task. Once available, it will live at the repository root and can be started with:
```bash
docker compose up
```
