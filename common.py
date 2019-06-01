#!/usr/bin/python3
# -*- coding: utf-8 -*-
# File common.py
# Date 2019-05-30 14:38
# Author Medue

import config
import sys
import os
import time
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
try:
    import arms
except Exception:
    raise


def get_value(data, key, default_value=None):
    """
    从源数据(只处理dict)获取指定key的值
    :param data: 源数据
    :param key: 指定key
    :param default_value: 默认值
    :return: string or dict
    """
    if key in data:
        return data[key]
    if isinstance(data, dict):
        for row in data:
            if key in data:
                return data[row][key]
            if isinstance(data[row], dict):
                return get_value(data[row], key, default_value)
    return default_value


def get_conf(key=None, default=None):
    """
    获取配置信息
    :param key: 指定key
    :param default: 当value不存在或key不存在时返回默认值
    :return: string or dist
    """
    if key:
        if key in config.config['common']:
            return config.config['common'][key]
        return default
    return config.config


def get_base_url():
    """
    获取抓取的URL
    :return: string https://riven.market/list/
    """
    return get_conf('base_url', 'https://riven.market/list/')+get_conf('separator', '/')+get_conf('platform', 'PC')


def get_request_url():
    """
    获取紫卡列表请求URL
    :return: string https://riven.market/_modules/riven/showrivens.php?
    """
    return get_conf('request_url', 'https://riven.market/_modules/riven/showrivens.php?')


def get_riven_list_url(riven, page=1, request_url=None):
    """
    获取紫卡列表url，具体uri参考config.yaml -> common -> uri_param配置
    :param riven: 紫卡名，参考riven_list.py
    :param page: 分页页数
    :param request_url: 请求的url
    :return: string
    https://riven.market/_modules/riven/showrivens.php?baseurl=Lw==&platform=PC&limit=25&recency=-1&veiled=true
    &onlinefirst=true&polarity=all&mastery=16&rerolls=-1&price=99999&rank=all&stats=any&sort=price&direction=ASC
    &neg=all&page=1&weapon=lanka&time=1559287447
    """
    if not request_url:
        request_url = get_request_url()
    uri_param = get_value(get_conf(), 'uri_param')
    url = request_url
    uri = None
    for param in uri_param:
        if not uri:
            uri = '%s=%s' % (param, uri_param[param])
        else:
            uri = uri+'&%s=%s' % (param, uri_param[param])
    uri = uri+'&page=%d&weapon=%s' % (page, riven)
    url = url+uri+'&time=%d' % int(time.time() * 1000)
    return url


def get_arms_list():
    """
    获取要查询的武器列表，参考riven_list.py 设置whether_query 为True 的数据是查询
    :return: {'Ignis': {'label': '伊格尼斯', 'lowest_price': None, 'highest_price': None, 'whether_query': True}}
    """
    list_data = {}
    for i in arms.arms:
        if arms.arms[i]['whether_query'] is True:
            list_data[i] = arms.arms[i]
    return list_data
