# Cursor Cloud Agent Elixir Config

I've found [Cursor Cloud Agents](https://cursor.com/docs/cloud-agent) to be very good for writing Elixir, but only once they are configured properly. Without proper configuration, the agents don't have access to any Elixir commands, which makes the quality of the code generated much lower.

Despite the simplicity of these configuration files, it took me a while to find exactly the right  setup, so I thought I'd share them.

Feel free to make improvements or use this as the basis for your own configuration.

## Installation

Copy this Dockerfile, environment.json, and install.sh into the .cursor folder of your project.

## Skills

Note, the install script will copy the skills from https://github.com/nickurban/elixir-phoenix-ash-skills into .codex/skills in the runtime (which is used by Cursor as well as Codex).

## Customization

`install.sh` or `environment.json` may need to be customized to install (or not install) different things,
or to skip copying over the skills mentioned above.

## AGENTS.md

Make sure you have an appropriate AGENTS.md in your project.

Phoenix generates one by default now, and [usage_rules](https://github.com/ash-project/usage_rules) is your friend.

I don't recommend using a coding agent with Ash without usage rules.

## Author

Copyright Nick Urban 2026

