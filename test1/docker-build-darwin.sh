#!/bin/bash
outfile=$(basename `pwd`)
docker run -v "$GOPATH":/go --rm -v "$PWD":/go/src/test1 -w /go/src/test1 -e GOOS="darwin" -e GOARCH="amd64" golang:1.11.6 go build -v -o "$outfile" 
fhash=`shasum -a 256 ./$outfile`
mv "$outfile" "$outfile-darwin-${fhash:0:8}"
unset fhash
