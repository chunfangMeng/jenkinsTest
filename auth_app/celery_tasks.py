# coding: utf-8
from jenkinsTest.celery import app


@app.task
def test_task() -> None:
    return 'success'
