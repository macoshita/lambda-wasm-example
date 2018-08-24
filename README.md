# lambda-wasm-example

## Run local

```bash
cd hello_world_wasm
./build.sh
cd ..
sam local start-api
```

## Deploy

```bash
$ aws s3 mb s3://lambda-wasm-example

$ sam package \
  --template-file template.yaml \
  --output-template .packaged.yaml \
  --s3-bucket lambda-wasm-example

$ sam deploy \
  --template-file .packaged.yaml \
  --stack-name lambda-wasm-example \
  --capabilities CAPABILITY_IAM
```

## Destroy

Remove CloudFormation Stack `lambda-wasm-example` and S3 Bucket.
