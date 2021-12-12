import os
from server import app

environment = os.getenv('FLASK_ENV') or 'development'
port = int(os.getenv('PORT') or '8080')

app.run('0.0.0.0', port, environment == 'development')
