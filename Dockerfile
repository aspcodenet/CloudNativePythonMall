FROM python

WORKDIR /app



COPY requirements.txt requirements.txt
RUN pip3 install --only-binary :all: greenlet
RUN pip3 install --only-binary :all: Flask-SQLAlchemy
RUN pip3 install -r requirements.txt

COPY . .

EXPOSE 5000

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]