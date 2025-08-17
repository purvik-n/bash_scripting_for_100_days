#!/bin/bash
# === File Backup Script (Beginner) ===
# Creates a timestamped tar.gz backup of a directory.
# Usage: ./backup.sh <source_directory> <backup_directory>

set -euo pipefail

SOURCE_DIR="${1:-}"
BACKUP_DIR="${2:-}"

if [ -z "$SOURCE_DIR" ] || [ -z "$BACKUP_DIR" ]; then
  echo "Usage: $0 <source_directory> <backup_directory>"
  exit 1
fi

if [ ! -d "$SOURCE_DIR" ]; then
  echo "Source directory not found: $SOURCE_DIR"
  exit 1
fi

mkdir -p "$BACKUP_DIR"

DATE=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FILE="$BACKUP_DIR/backup_$DATE.tar.gz"

tar -czf "$BACKUP_FILE" -C "$(dirname "$SOURCE_DIR")" "$(basename "$SOURCE_DIR")"

if [ $? -eq 0 ]; then
  echo "Backup successful! File saved at: $BACKUP_FILE"
else
  echo "Backup failed!"
  exit 1
fi
