#!/bin/bash

gcalcli --detail_url=short --calendar='Work' import "$1"
read -p 'press enter to exit: '"
