#!/bin/bash

rsync -avz --exclude '.git' ../../HackersCardgame9 $1
