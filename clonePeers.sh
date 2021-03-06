#!/usr/bin/env bash

##############################################################################
##
##  Wrapper sript to pull all peer git repositories
##
##############################################################################

BASEREPO="https://github.com/ibm-cloud-architecture/refarch-cloudnative"
REPO_MOBILE="https://github.com/ibm-cloud-architecture/refarch-cloudnative-bluecompute-mobile"
REPO_WEB="https://github.com/ibm-cloud-architecture/refarch-cloudnative-bluecompute-web"
REPO_BFF_INVENTORY="https://github.com/ibm-cloud-architecture/refarch-cloudnative-bff-inventory"
REPO_BFF_REVIEW="https://github.com/ibm-cloud-architecture/refarch-cloudnative-bff-socialreview"
REPO_API="https://github.com/ibm-cloud-architecture/refarch-cloudnative-api"
REPO_AUTH="https://github.com/ibm-cloud-architecture/refarch-cloudnative-auth"
REPO_MICRO_INVENTORY="https://github.com/ibm-cloud-architecture/refarch-cloudnative-micro-inventory"
REPO_MICRO_REVIEW="https://github.com/ibm-cloud-architecture/refarch-cloudnative-micro-socialreview"
REPO_MICRO_FOUDATION="https://github.com/ibm-cloud-architecture/refarch-cloudnative-micro-foundation"
REPO_MYSQL="https://github.com/ibm-cloud-architecture/refarch-cloudnative-mysql"
REPO_DEVOPS="https://github.com/ibm-cloud-architecture/refarch-cloudnative-devops"
REPO_NETFLIX_EUREKA="https://github.com/ibm-cloud-architecture/microservices-netflix-eureka"
REPO_NETFLIX_ZUUL="https://github.com/ibm-cloud-architecture/microservices-netflix-zuul"
echo 'Cloning peer projects...'

GIT_AVAIL=$(which git)
if [ ${?} -ne 0 ]; then
  echo "git is not available on your local system.  Please install git for your operating system and try again."
  exit 1
fi

DEFAULT_BRANCH=${1:-master}

echo -e '\nClone BlueCompute Mobile project'
REPO=${REPO_MOBILE}
PROJECT=$(echo ${REPO} | cut -d/ -f5)
git clone -b ${DEFAULT_BRANCH} ${REPO} ../${PROJECT}

echo -e '\nClone BlueCompute Web project'
REPO=${REPO_WEB}
PROJECT=$(echo ${REPO} | cut -d/ -f5)
git clone -b ${DEFAULT_BRANCH} ${REPO} ../${PROJECT}

echo -e '\nClone Inventory BFF project'
REPO=${REPO_BFF_INVENTORY}
PROJECT=$(echo ${REPO} | cut -d/ -f5)
git clone -b ${DEFAULT_BRANCH} ${REPO} ../${PROJECT}

echo -e '\nClone SocialReview BFF project'
REPO=${REPO_BFF_REVIEW}
PROJECT=$(echo ${REPO} | cut -d/ -f5)
git clone -b ${DEFAULT_BRANCH} ${REPO} ../${PROJECT}

echo -e '\nClone API project'
REPO=${REPO_API}
PROJECT=$(echo ${REPO} | cut -d/ -f5)
git clone -b ${DEFAULT_BRANCH} ${REPO} ../${PROJECT}

echo -e '\nClone Auth project'
REPO=${REPO_AUTH}
PROJECT=$(echo ${REPO} | cut -d/ -f5)
git clone -b ${DEFAULT_BRANCH} ${REPO} ../${PROJECT}

echo -e '\nClone Inventory Microservice project'
REPO=${REPO_MICRO_INVENTORY}
PROJECT=$(echo ${REPO} | cut -d/ -f5)
git clone -b ${DEFAULT_BRANCH} ${REPO} ../${PROJECT}

echo -e '\nClone SocialReview Microservice project'
REPO=${REPO_MICRO_REVIEW}
PROJECT=$(echo ${REPO} | cut -d/ -f5)
git clone -b ${DEFAULT_BRANCH} ${REPO} ../${PROJECT}

echo -e '\nClone Microservice Foundation project'
REPO=${REPO_MICRO_FOUDATION}
PROJECT=$(echo ${REPO} | cut -d/ -f5)
git clone -b ${DEFAULT_BRANCH} ${REPO} ../${PROJECT}

echo -e '\nClone MySQL project'
REPO=${REPO_MYSQL}
PROJECT=$(echo ${REPO} | cut -d/ -f5)
git clone -b ${DEFAULT_BRANCH} ${REPO} ../${PROJECT}

echo -e '\nClone DevOps project'
REPO=${REPO_DEVOPS}
PROJECT=$(echo ${REPO} | cut -d/ -f5)
git clone -b ${DEFAULT_BRANCH} ${REPO} ../${PROJECT}

echo -e '\nClone Netflix Core project'
REPO=${REPO_NETFLIX_EUREKA}
PROJECT=$(echo ${REPO} | cut -d/ -f5)
git clone -b ${DEFAULT_BRANCH} ${REPO} ../${PROJECT}

echo -e '\nClone Netflix Core project'
REPO=${REPO_NETFLIX_ZUUL}
PROJECT=$(echo ${REPO} | cut -d/ -f5)
git clone -b ${DEFAULT_BRANCH} ${REPO} ../${PROJECT}

echo -e '\nCloned all peer projects successfully!\n'
ls ../ | grep refarch-cloudnative
