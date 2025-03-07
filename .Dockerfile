# Use the n8n official image as the base image
FROM n8nio/n8n:latest

# Set the N8N release date manually (change the date if needed)
ENV N8N_RELEASE_DATE="2025-03-07T12:00:00Z"

# Enforce proper file permissions for n8n settings file
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Expose the required port for n8n
EXPOSE 5678

# Set the default command to start n8n
CMD ["n8n"]
