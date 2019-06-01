#!/usr/bin/python3
# -*- coding: utf-8 -*-
# File riven.py
# Date 2019-05-30 15:51
# Author Medue

import sys
import os
import re
from bs4 import BeautifulSoup
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))


def get_riven_list_data(html, result, arms_name):
    soup = BeautifulSoup(html, 'html.parser')
    row_data = soup.findAll(attrs={'class': 'riven'})
    for key in range(len(row_data)):
        riven_info = row_data[key]
        riven_name = str.strip(riven_info.find('span').get_text())
        riven_price = str.strip(riven_info.find(id=re.compile("price")).get('value'))
        riven_rank = int(riven_info.find(attrs={'class': 'mastery'}).get_text())
        riven_polarity = str.strip(riven_info.find(attrs={'class': 'polarity'}).get_text())
        riven_reroll = int(riven_info.find(id=re.compile("reroll")).get('value'))
        # name 价格 重制次数 等级 极性
        result.append([arms_name+'-'+riven_name, riven_price, riven_reroll, riven_rank, riven_polarity])
    return result


def get_page_num(html):
    """
    获取查询到的紫卡总条数
    :param html: html
    :return: int default: 0
    """
    soup = BeautifulSoup(html, 'html.parser')
    result = soup.find(attrs={'class': 'pagination'}).findAll('b')
    num = 0
    for i in result:
        num = i.get_text()
    return int(num)
