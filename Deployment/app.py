# import necessary libraries
from calendar import month
import os
from flask import (
    Flask,
    render_template,
    jsonify,
    request,
    redirect)

#################################################
# Flask Setup
#################################################
app = Flask(__name__)

#################################################
# Database Setup
#################################################

from flask_sqlalchemy import SQLAlchemy
app.config['SQLALCHEMY_DATABASE_URI'] = os.environ.get('finalprojectgroup5.c1jelrjhbrlm.us-east-1.rds.amazonaws.com', '') or "sqlite:///db.sqlite"

# Remove tracking modifications
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

db = SQLAlchemy(app)

from .models import City, Pet


# create route that renders index.html template
@app.route("/")
def home():
    return render_template("index.html")


# Query the database and send the jsonified results
@app.route("/send", methods=["GET", "POST"])
def send():
    if request.method == "POST":
        city = request.form["City"]
        month = request.form["month"]
        year = request.form["year"]

        city = City(city=city, month=month, year=year)
        db.session.add(city)
        db.session.commit()
        return redirect("/", code=302)

    return render_template("predict.html")


@app.route("predict.html")
def pals():
    results = db.session.query(City.name, City.lat, City.lon).all()

    hover_text = [result[0] for result in results]
    month = [result[1] for result in results]
    year = [result[2] for result in results]

    city_data = [{
        "type": "scattergeo",
        "locationmode": "USA-states",
        "lat": lat,
        "lon": lon,
        "text": hover_text,
        "hoverinfo": "text",
        "marker": {
            "color": ['#636EFA', '#EF553B', '#00CC96', '#AB63FA', '#FFA15A', '#19D3F3', '#FF6692', '#B6E880', '#FF97FF', '#FECB52'],
            "size": 15,
            "line": {
                "color": "rgb(8,8,8)",
                "width": 1
            },
        }
    }]

    return jsonify(city_data)


if __name__ == "__main__":
    app.run()
