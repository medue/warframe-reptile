#!/usr/bin/python3
# -*- coding: utf-8 -*-
# File riven.py
# Date 2019-05-30 15:51
# Author Medue

import sys
import os
import re
import riven_attr
from bs4 import BeautifulSoup
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))


def get_riven_list_data(html, result, arms):
    """
    获取紫卡列表数据
    :param html: 源代码
    :param result: 结果组
    :param arms: 武器信息
    :return: list | result type
    """
    if not isinstance(result, list):
        return result
    soup = BeautifulSoup(html, 'html.parser')
    row_data = soup.findAll(attrs={'class': 'riven'})
    for key in range(len(row_data)):
        riven_info = row_data[key]
        # 紫卡名
        riven_name = str.strip(riven_info.find('span').get_text())
        # 紫卡价格
        riven_price = str.strip(riven_info.find(id=re.compile("price")).get('value'))
        # 等级
        riven_rank = int(riven_info.find(attrs={'class': 'mastery'}).get_text())
        # 极性
        riven_polarity = str.strip(riven_info.find(attrs={'class': 'polarity'}).get_text())
        # 重置次数
        riven_reroll = int(riven_info.find(id=re.compile("reroll")).get('value'))
        # 属性
        result_attr = '正属性：'
        # # 正属性
        # riven_attrs_pos = riven_info.find_all(attrs={'class': 'pos'})
        # if riven_attrs_pos:
        #     for attr in range(len(riven_attrs_pos)):
        #         attr_name_text = str.strip(riven_attrs_pos[attr].find(attrs={'class': 'name'}).get_text())
        #         attr_value_text = str.strip(riven_attrs_pos[attr].input.get('value'))
        #         try:
        #             if riven_attr.riven_attr[attr_name_text.split('\t', 1)[0]]:
        #                 attr_list = riven_attr.riven_attr[attr_name_text.split('\t', 1)[0]]
        #                 result_attr += "%s+%s " % (attr_list['label'], attr_value_text)
        #         except Exception as e:
        #             print(e.args)
        #             print(riven_attr.riven_attr['Punch'])
        #             print(attr_name_text, attr_name_text.split('\t', 1))
        #             exit(222)
        # result_attr += ' | 负属性：'
        # # 负属性
        # riven_attrs_neg = riven_info.find(attrs={'class': 'neg'})
        # if riven_attrs_neg:
        #     attr_name_text = str.strip(riven_attrs_neg.find(attrs={'class': 'name'}).get_text())
        #     attr_value_text = str.strip(riven_attrs_neg.input.get('value'))
        #     if riven_attr.riven_attr[attr_name_text.split('\t', 1)[0]]:
        #         attr_list = riven_attr.riven_attr[attr_name_text.split('\t', 1)[0]]
        #         result_attr += "%s %s " % (attr_list['label'], attr_value_text)
        # else:
        #     result_attr += '无'

        # 最低价格过滤
        if arms['lowest_price'] and arms['lowest_price'] < int(riven_price):
            continue
        # 重置次数过滤
        if arms['rerolls'] < riven_reroll:
            continue
        # name 价格 重制次数 等级 极性 属性
        result.append([
            '紫卡：'+arms['label']+'-'+riven_name,
            '价格：'+riven_price,
            '次数：'+str(riven_reroll),
            '等级：'+str(riven_rank),
            '极性：'+riven_polarity,
            '属性：'+str(result_attr)
        ])
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
