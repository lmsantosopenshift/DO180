#!/bin/bash
oc exec -it $(oc get pod -l app=db-pod -o name) -- /bin/bash -c "mysql -uuser1 -pmypa55w0rd -hlocalhost -P3306 -e 'use items;select * from Item'"
