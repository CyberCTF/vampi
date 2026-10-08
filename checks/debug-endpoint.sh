#!/bin/sh
# Populates the database (/createdb, as upstream says to do first), then the debug endpoint leaks
# every user with its password: the vulnerable build answers.
curl -fsS -o /dev/null http://vampi:5000/createdb || exit 1
curl -fsS http://vampi:5000/users/v1/_debug | grep -q '"password"'
