PORT ?= 8000

install:
	poetry install

run:
	poetry run flask --app example --debug run --port 8000

prod:
	poetry run gunicorn --workers=4 --bind 0.0.0.0:$(PORT) hello_world:app --log-file -


