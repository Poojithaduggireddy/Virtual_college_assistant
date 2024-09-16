FROM python:3.8-slim

# Install Rasa
RUN python3 -m pip install rasa

# Set working directory
WORKDIR /app
RUN adduser rasauser

# Copy everything to the container
COPY . .

# Train the NLU model
#RUN rasa train

# Expose the port Rasa will run on
EXPOSE 5005

# Use a non-root user
USER rasauser

# Set the entrypoint for interactive shells
ENTRYPOINT ["rasa"]

# Command to run when container is called to run
CMD ["run", "--enable-api", "--cors", "*", "--debug"]
