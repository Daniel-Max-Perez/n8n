# Use the n8n official image as the base image
FROM n8nio/n8n:latest

# Set the N8N release date manually
ENV N8N_RELEASE_DATE="2025-03-07T12:00:00Z"
# Enforce proper file permissions for n8n settings file
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Database configuration
ENV DB_TYPE=postgresdb
ENV DB_POSTGRESDB_HOST=your-postgres-host
ENV DB_POSTGRESDB_PORT=5432
ENV DB_POSTGRESDB_DATABASE=your-database-name
ENV DB_POSTGRESDB_USER=your-database-user
ENV DB_POSTGRESDB_PASSWORD=your-database-password

# Additional configurations
ENV N8N_PORT=5678
ENV NODE_ENV=production

# Expose the required port for n8n
EXPOSE 5678

# Set the default command to start n8n with explicit path
CMD ["node", "/usr/local/lib/node_modules/n8n/bin/n8n", "start"]
