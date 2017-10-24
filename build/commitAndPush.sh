#!/bin/bash

# if nothing changed, we're done
NUM_FILES_CHANGED=$(git diff --name-only | wc -l)
if [[ $NUM_FILES_CHANGED == 0 ]]; then
    echo No files changed
    exit 0
fi

pushd "$(dirname "$0")"

echo Commiting and pushing f5-service-discovery/f5.service_discovery.tmpl
CONTENT=$(<../f5-service-discovery/f5.service_discovery.tmpl)
curl -s --insecure -X PUT -F private_token="$API_TOKEN" -F file_path="f5-service-discovery/f5.service_discovery.tmpl" -F branch_name="$CI_BUILD_REF_NAME" -F commit_message="update hash" -F content="$CONTENT" ${CI_BASE_URL}/$CI_PROJECT_ID/repository/files

popd
