#!/bin/sh

scm_clone()
{
  echo "Clone the project"
}

build()
{
  echo "Checkout branch and compile"
}

test()
{
  echo "Run tests!"
}

#### CI Steps Called Based on Stages #####

branch="master"
stage=$1

if [[ "$stage" == "TEST" ]]; then
   pytest test_scenarios.py
fi



