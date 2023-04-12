# Stop docker stack
docker compose down
# Remove volumes folders
remove-item -ErrorAction Ignore -Force -recurse ".\databases" | Out-Null
# Recreate folders
New-Item -ItemType Directory -ErrorAction Ignore ".\databases" | Out-Null
New-Item -ItemType Directory -ErrorAction Ignore ".\databases\destination" | Out-Null
New-Item -ItemType Directory -ErrorAction Ignore ".\databases\original" | Out-Null
# Start docker stack
docker compose up -d