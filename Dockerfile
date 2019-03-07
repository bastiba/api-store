FROM python:3

ADD __main__.py /
ADD _version.py /

RUN pip install dnspython==1.15.0
RUN pip install pymongo==3.6.1
RUN pip install requests==2.18.4


#CMD [ "python", "./__main__.py", "-H mongo-server", "-P 27017", "-D mongoDB", "-u bassam", "-p mongoPassword01", "-A api-bracelet" ]

CMD python ./__main__.py -H mongo-server -P 27017 -D mongoDB -u bassam -p mongoPassword01 -A api-bracelet
