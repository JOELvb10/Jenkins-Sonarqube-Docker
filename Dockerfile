FROM nginx:1.25

# Create non-root user and group
RUN addgroup --system appgroup && adduser --system --ingroup appgroup appuser

# Copy application files
COPY . /usr/share/nginx/html

# Change ownership to non-root user
RUN chown -R appuser:appgroup /usr/share/nginx/html

# Switch to non-root user
USER appuser

# Expose port
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
