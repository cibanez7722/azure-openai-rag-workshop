#!/usr/bin/env bash
cd "$(dirname "${BASH_SOURCE[0]}")/.."

if azd_env=$(azd env get-values); then
  echo "Loading azd .env file from current environment"
  export $(echo "$azd_env" | xargs)
fi

echo 'Uploading PDF files to the ingestion API'
curl -F "file=@./data/privacy-policy.pdf" "${INGESTION_API_URI:-http://localhost:3001}/documents"
curl -F "file=@./data/support.pdf" "${INGESTION_API_URI:-http://localhost:3001}/documents"
curl -F "file=@./data/terms-of-service.pdf" "${INGESTION_API_URI:-http://localhost:3001}/documents"

curl -F "file=@./data/PB.pdf" "${INGESTION_API_URI:-http://localhost:3001}/documents"
curl -F "file=@./data/MOULDING.pdf" "${INGESTION_API_URI:-http://localhost:3001}/documents"
curl -F "file=@./data/PRISM.pdf" "${INGESTION_API_URI:-http://localhost:3001}/documents"

curl -F "file=@./data/Fibrex_HDF_CBFR_Specifications.pdf" "${INGESTION_API_URI:-http://localhost:3001}/documents"
curl -F "file=@./data/Fibrex_HDF_Specifications.pdf" "${INGESTION_API_URI:-http://localhost:3001}/documents"
curl -F "file=@./data/523-Maderas-Arauco-Trupan-Chile-HCHO-Program-certificate-of-compliance.pdf" "${INGESTION_API_URI:-http://localhost:3001}/documents"
curl -F "file=@./data/TRUPAN_MDF_spec_CUSTOM.pdf" "${INGESTION_API_URI:-http://localhost:3001}/documents"
curl -F "file=@./data/TRUPAN_MDF_spec_HIGH_PLUS.pdf" "${INGESTION_API_URI:-http://localhost:3001}/documents"
curl -F "file=@./data/TRUPAN_MDF_spec_HIGH_PLUS_HD.pdf" "${INGESTION_API_URI:-http://localhost:3001}/documents"
curl -F "file=@./data/TRUPAN_MDF_spec_LITE.pdf" "${INGESTION_API_URI:-http://localhost:3001}/documents"
curl -F "file=@./data/TRUPAN_MDF_spec_MOISTURE_RESISTANT.pdf" "${INGESTION_API_URI:-http://localhost:3001}/documents"
curl -F "file=@./data/TRUPAN_MDF_spec_PLUS.pdf" "${INGESTION_API_URI:-http://localhost:3001}/documents"
curl -F "file=@./data/TRUPAN_MDF_spec_STANDARD.pdf" "${INGESTION_API_URI:-http://localhost:3001}/documents"
curl -F "file=@./data/TRUPAN_MDF_spec_VESTA_ULEF.pdf" "${INGESTION_API_URI:-http://localhost:3001}/documents"
curl -F "file=@./data/TRUPAN_spec-Light.pdf" "${INGESTION_API_URI:-http://localhost:3001}/documents"
curl -F "file=@./data/DURAFLAKE_PB_spec_PLUS.pdf" "${INGESTION_API_URI:-http://localhost:3001}/documents"
curl -F "file=@./data/DURAFLAKE_PB_spec_STANDARD.pdf" "${INGESTION_API_URI:-http://localhost:3001}/documents"
curl -F "file=@./data/DURAFLAKE_PB_spec_VESTA_ULEF.pdf" "${INGESTION_API_URI:-http://localhost:3001}/documents"
curl -F "file=@./data/2021_ARAUCO_Sustainability_Report.pdf" "${INGESTION_API_URI:-http://localhost:3001}/documents"