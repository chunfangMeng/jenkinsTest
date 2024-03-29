import logging
import logging.handlers
import multiprocessing
import os
from logging.handlers import WatchedFileHandler


if not os.path.isdir('./logs'):
    os.mkdir('./logs')

workers = multiprocessing.cpu_count() * 2 + 1
threads = 2
backlog = 512
bind = '0.0.0.0:8000'
daemon = 'false'
worker_class = 'gevent'
worker_connections = 2000
loglevel = 'info'
accesslog = '-'
access_log_format = '%(t)s %(p)s %(h)s "%(r)s" %(s)s %(L)s %(b)s %(f)s" "%(a)s"'
