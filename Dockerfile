FROM ubuntu:14.04

RUN apt-get update && apt-get install python-pip sqlite3 lib32z1-dev python-dev libxml2-dev libxslt-dev libffi-dev libssl-dev -y && \
    apt-get clean

RUN pip install https://github.com/mitsuhiko/flask/tarball/master
RUN pip install owasp-skf

CMD nohup python /usr/local/lib/python2.7/dist-packages/skf/skf.py &
