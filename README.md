# Fetch weather from the wttr MCP Server

A Model Context Protocol (MCP) server that fetches weather data from wttr, with reference code from the [duckduckgo-mcp-server](https://github.com/nickclyde/duckduckgo-mcp-server).

## Installation

### Installing via docker

```bash
./build_docker_image.sh
```

## Usage

With following configuration:

```json
{
    "mcpServers": {
        "web_fetch_wttr": {
            "command": "docker",
            "args": [
                "run",
                "--rm",
                "-i",
                "--init",
                "web_fetch_wttr:1.0.0"
            ]
        }
    }
}
```

## Available Tools

### 1. Tool to get current weather
```python
async def get_current_weather(city_name: str, ctx: Context) -> str
```

### 2. Tool to get three day's weather
```python
async def get_three_day_weather(city_name: str, ctx: Context) -> str
```


## Testing

Tested by ollama models: llama3.2:3b-instruct-q2_K, qwen3:0.6b, qwen3:1.7b