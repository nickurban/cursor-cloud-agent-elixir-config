#!/usr/bin/env bash

# From https://github.com/nickurban/cursor-cloud-agent-elixir-config

set -e

SKILLS_DIR=".codex/skills"
SKILLS_REPO_URL="https://github.com/nickurban/elixir-phoenix-ash-skills"
SKILLS_REPO_DIR="${SKILLS_DIR}/elixir-phoenix-ash-skills"

mkdir -p "${SKILLS_DIR}"

if [ -d "${SKILLS_REPO_DIR}/.git" ]; then
  git -C "${SKILLS_REPO_DIR}" pull --ff-only
else
  git clone "${SKILLS_REPO_URL}" "${SKILLS_REPO_DIR}"
fi

mix deps.get
mix compile --force
MIX_ENV=test mix compile
mix tailwind.install --if-missing
mix esbuild.install --if-missing
mix dialyzer --plt
