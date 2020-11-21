#!/bin/bash

rm ~/.ssh/id*
ssh-keygen -t ed25519
cat ~/.ssh/id*.pub

