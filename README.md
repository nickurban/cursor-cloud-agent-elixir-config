# Cursor Cloud Agent Elixir Config

I've found [Cursor Cloud Agents](https://cursor.com/docs/cloud-agent) to be very good for writing Elixir, but only once they are configured properly. Without proper configuration, the agents don't have access to any Elixir commands, which makes the quality of the code generated much lower.

Despite the simplicity of these configuration files, it took me a while to find exactly the right  setup, so I thought I'd share them.

Feel free to make improvements and send PRs!

## Installation

Simply copy this Dockerfile and environment.json files into the .cursor folder of your project.

## Customization

`environment.json` may need to be customized:

- If you are not using dialyzer, remove that from environment.json.
- If you are using Ash, replace `mix ecto.setup` with `mix ash.setup`.
- If you are using node, add `npm --prefix assets install` to the install line, e.g.

## AGENTS.md

Make sure you have an appropriate AGENTS.md in your project.

Phoenix generates one by default now, and [usage_rules](https://github.com/ash-project/usage_rules) is your friend.

I don't recommend using a coding agent with Ash without usage rules.
