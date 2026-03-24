#!/bin/bash
# Reassemble split files for: nightmares

ORIGINAL="Media/nightmares ext v2.1 edit v1.1 ext v2 edit v2.1 ext v1.wav"

if [ -f "$ORIGINAL" ]; then
  echo "Skipping: $ORIGINAL already exists"
else
  echo "Reassembling: $ORIGINAL"
  cat "${ORIGINAL}.part_"* > "$ORIGINAL"
  echo "Done. Size: $(du -h "$ORIGINAL" | cut -f1)"
fi
