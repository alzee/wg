#!/bin/bash
#
# vim:ft=bash

curl -L https://ash.alz.ee | DEFAULT_USER=admin bash

curl -L https://wg.alz.ee/setup | PRIVATEKEY='xxxxx' SERVER=z bash
