$ErrorActionPreference = "Stop"

Invoke-RestMethod -Uri "$env:DEPLOY_WEBHOOK_URL" -Method "GET" -UserAgent "AppVeyor-Webhook" `

Write-Output "[Deploy Webhook]: Successfully sent the webhook."