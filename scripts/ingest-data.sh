#!/usr/bin/env bash
cd "$(dirname "${BASH_SOURCE[0]}")/.."

if azd_env=$(azd env get-values); then
  echo "Loading azd .env file from current environment"
  export $(echo "$azd_env" | xargs)
fi

echo 'Uploading PDF files to the ingestion API'

curl -F "file=@./data/20_F_2022" "${INGESTION_API_URI:-http://localhost:3001}/documents"
curl -F "file=@./data/Estados_financieros_2024.pdf.pdf" "${INGESTION_API_URI:-http://localhost:3001}/documents"