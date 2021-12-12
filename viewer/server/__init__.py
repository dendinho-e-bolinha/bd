from base64 import urlsafe_b64decode, urlsafe_b64encode
from flask import Flask, render_template, request
import server.database as database

app = Flask('viewer')


@app.route("/")
def home():
    query = request.args.get('query')
    if query is None:
        return render_template('home.html')

    result = database.get_html_from_query(query)

    if result is None:
        return "<strong>CRITICAL ERROR</strong><br>" + query

    return render_template('table.html' if result[0] else 'error.html', query=query, res=result[1])
