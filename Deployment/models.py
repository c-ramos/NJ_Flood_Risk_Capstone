from .app import db


class City(db.Model):
    __tablename__ = 'per_city_rainfall'

    CITY = db.Column(db.String, primary_key=True)
    month = db.Column(db.Integer)
    year = db.Column(db.Float)

    def __repr__(self):
        return '<Pet %r>' % (self.name)
