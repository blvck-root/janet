#!/bin/bash

# Define the source script and installation directory
JANET="janet"
STARTER="starter/"
APP_PATH="/opt/janet"
BIN_PATH="/usr/local/bin"

# Check if the source script exists
if [ -f "${JANET}.sh" ]; then
	echo -e "Installing binaries..."

	mkdir -p "${APP_PATH}"

	# Copy starter files and source script
	cp -r "${STARTER}" "${APP_PATH}/${STARTER}/" 
	cp "${JANET}.sh" "${APP_PATH}/${JANET}"
	
	# Set the executable permissions on the installed script
	chmod +x "${APP_PATH}/${JANET}"
	ln -s "${APP_PATH}/${JANET}" "${BIN_PATH}/${JANET}"
	
	echo "Script '${JANET}' has been installed to '${BIN_PATH}'."
else
    echo "Error: Source script '${JANET}' not found."
    exit 1
fi
