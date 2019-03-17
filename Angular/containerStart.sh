#!/bin/sh
git config --global user.name $GITUSER
git config --global user.email $GITEMAIL

$1 $2 $3 $4 $5 $6 $7 $8 $9

