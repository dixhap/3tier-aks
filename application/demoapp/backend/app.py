from flask import Flask, jsonify
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)
app.config["SQLALCHEMY_DATABASE_URI"] = "postgresql://user:password@database:5432/myhealthclinic"
db = SQLAlchemy(app)

@app.route("/patients", methods=["GET"])
def get_patients():
    patients = db.session.query(Patient).all()
    return jsonify([{"id": p.id, "name": p.name} for p in patients])

if __name__ == "__main__":
    app.run(debug=True)