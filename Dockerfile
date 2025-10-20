FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy project files
COPY setup.py README.md ./
COPY nastya_sort/ ./nastya_sort/

# Install the package
RUN pip install --no-cache-dir -e .

# Set entrypoint to the CLI command
ENTRYPOINT ["tail"]

# Default command shows help
CMD ["--help"]