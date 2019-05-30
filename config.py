#!/usr/bin/python3
# -*- coding: utf-8 -*-
# File config.py
# Date 2019-05-30 11:58
# Author Medue

import yaml
import sys
import os

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

source_file = open('config.yaml', encoding="utf-8")
config = yaml.full_load(source_file)

# 检查配置是否存在
if 'common' not in config:
    raise Exception()
