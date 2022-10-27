#!/bin/bash
echo "Generating sitemap..."
source .env 
npx svelte-sitemap --domain https://$PUBLIC_DNS
