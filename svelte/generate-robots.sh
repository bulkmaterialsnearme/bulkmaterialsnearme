#!/bin/sh
echo "Generating robots.txt..."
source .env 
echo "User-agent: *
Disallow:
Disallow: /cgi-bin/
Disallow: /admin/
Disallow: /data/
Sitemap: https://${PUBLIC_DNS}/sitemap.xml" > robots.txt

cat robots.txt
cp ./robots.txt build/
