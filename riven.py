#!/usr/bin/python3
# -*- coding: utf-8 -*-
# File riven.py
# Date 2019-05-30 15:51
# Author Medue

import sys
import os
import re
from urllib import request
from bs4 import BeautifulSoup
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))


def get_select_option_value(html):
    soup = BeautifulSoup(html, 'html.parser')
    # print(soup.findAll(attrs={'data-current': 'Opticor'}))
