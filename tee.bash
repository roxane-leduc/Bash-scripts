#! /bin/bash

function foo() {
	local CHAINE="${1}";
	# echo "${CHAINE}" | tr a-z A-Z;
	echo "${CHAINE^^}";
	return "${#CHAINE}";
}

function bar() {
	echo ${BASH_ARGV[0]^^};
	return ${#BASH_ARGV[0]};
}

function tee() {
	local CHAINE="${1}";
	CHAINE="${CHAINE^^}";
	echo "${#CHAINE} ${CHAINE}";
}
# N=$(foo ${1});
# N=$(foo ${#BASH_ARGV[0]});
# N=$(bar);
# echo "Longueur = ${N}";
R=$(tee ${1});
echo "R = ${R}";

