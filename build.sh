#!/bin/bash

# Install Flutter if not present
if [ ! -d "flutter" ]; then
  git clone https://github.com/flutter/flutter.git -b stable
  export PATH="$PATH:`pwd`/flutter/bin"
fi

# Get dependencies
flutter pub get

# Build for web
flutter build web