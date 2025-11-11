FROM elixir:1.19-otp-28-slim

RUN apt update -y
RUN apt install -y curl git inotify-tools postgresql build-essential tzdata ntpdate sudo npm nodejs
RUN mix local.hex --force && mix local.rebar --force

# Set a password on the postgres user that matches the Phoenix default.
RUN service postgresql start && sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD 'postgres';" && service postgresql stop

# Enable parallel compilation of OS dependencies (requires Elixir 1.19).
ENV MIX_OS_DEPS_COMPILE_PARTITION_COUNT=4
