# Use the n8n official image as the base image
FROM n8nio/n8n:latest

# Set the N8N release date manually
ENV N8N_RELEASE_DATE="2025-03-07T12:00:00Z"
# Enforce proper file permissions for n8n settings file
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Database configuration
ENV DB_TYPE=postgresdb
ENV DB_POSTGRESDB_HOST=dpg-cv57rifnoe9s73eeo7lg-a
ENV DB_POSTGRESDB_PORT=5432
ENV DB_POSTGRESDB_DATABASE=n8n_1
ENV DB_POSTGRESDB_USER=fwdinnovations
ENV DB_POSTGRESDB_PASSWORD=RVlPaE5qDiB5rgkrYoyy4d651ARUBGzB

# Additional configurations
ENV N8N_PORT=5678
ENV NODE_ENV=production

# Expose the required port for n8n
EXPOSE 5678
 
# Set the default command to start n8n with explicit path
CMD ["node", "/usr/local/lib/node_modules/n8n/bin/n8n", "start"]
