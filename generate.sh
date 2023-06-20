if test -d "/opt/homebrew/bin/"; then
  PATH="$PATH:/opt/homebrew/bin"
fi

export PATH

rm -rf docs Sources project.yml README.md Package.swift .openapi-generator .openapi-generator-ignore .swiftformat

if which openapi-generator > /dev/null; then
openapi-generator generate \
    -i ./api.yaml          \
    -g swift5              \
    -o ./                  \
    --additional-properties projectName=LowKeyClient,useSPMFileStructure=true,responseAs=AsyncAwait,hashableModels=false,removeMigrationProjectNameClass=true

rm Cartfile
rm LowKeyClient.podspec
rm git_push.sh

git restore .gitignore

else
  echo "warning: OpenAPI Generator not installed, installation instructions are here https://openapi-generator.tech/docs/installation#homebrew"
fi
