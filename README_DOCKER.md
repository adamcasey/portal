# Running the Division 1 College Football Player Lookup App with Docker

## Prerequisites

- Docker installed
- A running Postgres database (cloud or local)
- A `.env` file with your `POSTGRES_URL` (not included in the image)

## Quick Start

1. **Create your `.env` file**

   - Copy `.env.example` or create `.env` with:
     ```
     POSTGRES_URL=postgres://user:password@host:port/dbname
     ```

2. **Build the Docker image:**

   ```sh
   docker build -t d1-football-lookup .
   ```

3. **Run the container:**

   ```sh
   docker run --env-file .env -p 3000:3000 d1-football-lookup
   ```

4. **Visit the app:**
   - Open [http://localhost:3000](http://localhost:3000)

## Notes

- The container expects the `.env` file to be provided at runtime.
- Make sure your database is accessible from the container.
- For development, you may want to mount the source code as a volume and use `pnpm dev` instead of `pnpm start`.
