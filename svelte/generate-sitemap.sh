#!/bin/sh
echo "Generating sitemap..."
npx svelte-sitemap --domain https://$PUBLIC_DNS
