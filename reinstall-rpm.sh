#!/bin/bash

rpmqa=$(rpm -qa)
function removepkg() {
    if echo $rpmqa | grep $1 >/dev/null; then echo "removing $1"; rpm -e $1; fi
}

removepkg davrods
removepkg irods-auth-plugin-openid
removepkg irods-resource-plugin-globus
removepkg irods-rule-engine-plugin-python
removepkg irods-database-plugin-postgres
removepkg irods-server
removepkg irods-icommands
removepkg irods-devel
removepkg irods-runtime

rpm -i irods-runtime-4.2.3-1.x86_64.rpm
rpm -i irods-devel-4.2.3-1.x86_64.rpm
rpm -i irods-icommands-4.2.3-1.x86_64.rpm
rpm -i irods-server-4.2.3-1.x86_64.rpm
rpm -i irods-database-plugin-postgres-4.2.3-1.x86_64.rpm
rpm -i irods-rule-engine-plugin-python-4.2.3-centos7-x86_64.rpm
rpm -i irods-resource-plugin-globus-2.0.0-1.x86_64.rpm
rpm -i irods-auth-plugin-openid-2.2.0-1.x86_64.rpm
rpm -i davrods-4.2.3_1.4.0-1.rpm

