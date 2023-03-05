#!/bin/bash
# For TDD use pytest-watch
# pytest --cov-report term-missing:skip-covered --cov=code2uml --cov-report html  tests/
pytest --cov-report term-missing:skip-covered --cov=./ ./
