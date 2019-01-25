FROM python:3
ENV PORT 8080
EXPOSE 8080

RUN mkdir -p /usr/src/app/requirements
WORKDIR /usr/src/app
COPY requirements.txt /usr/src/app/
COPY requirements/*.txt /usr/src/app/requirements/
RUN pip install --no-cache-dir -r requirements.txt

ENTRYPOINT ["python"]
CMD ["app.py"]
