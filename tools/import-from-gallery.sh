#!/bin/sh

IMPORT_LIST="${1}"
GALLERY_SRC="${2}"


if [ $# -ne 2 ]; then
    echo "Usage: ${0} import-list gallery-source-root"
    exit 1
fi


if [ ! -f "${IMPORT_LIST}" ]; then
    echo "Unable to read import list"
    exit 1
fi


cat ${IMPORT_LIST} | while read line; do
    if [ ! -f "${GALLERY_SRC}/${line}" ]; then
        echo "Unable to find ${line}. Aborting."
        exit 1
    else
        echo "Importing: ${line}"
        install -D -m0644 "${GALLERY_SRC}/${line}" "${line}"
    fi
done
