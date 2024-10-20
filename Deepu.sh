mkdir -p .devcontainer
cat <<EOL > .deepucontainer/deepucontainer.json
{
    "name": "My Codespace",
    "image": "mcr.microsoft.com/vscode/deepucontainers/python:3.8",
    "features": {
        "ghcr.io/deepucontainers/features/sshd:1": {
            "version": "latest"
        }
    },
    "postStartCommand": "python3 /workspaces/danger/kashif.py",
    "customizations": {
        "vscode": {
            "settings": {
                "python.pythonPath": "/usr/local/bin/python"
            },
            "extensions": [
                "ms-python.python"
            ]
        }
    }
}

EOL

git add .deepucontainer/deepucontainer.json
git commit -m "Add postStartCommand to run Python script automatically"
git push origin main