#!/bin/bash
#

name=tidybattery
#GITREPO=https://github.com/decayofmind/tidybattery.git
GITREPO=https://github.com/cvr/tidybattery.git


[ -d "${name}" ] && rm -rf ${name}

git clone $GITREPO

if [ ! -d "${name}" ] ; then
	echo "Error: '${name}/' missing, git clone failed?"
	exit 1
fi

cd ${name}/

## Get id for last commit
hashid=$(git show -s --format=%h | head -1)
hashdt=$(git show -s --format=%ci | head -1 | awk '{ print $1 }' | sed 's/-//g')

git archive --format tar --prefix ${name}-${hashdt}.${hashid}/ ${hashid} | \
	xz -zf - > ../${name}_${hashdt}.${hashid}.orig.tar.xz

cd ../
rm -rf ${name}

tar -xf ${name}_${hashdt}.${hashid}.orig.tar.xz

