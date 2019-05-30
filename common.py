#!/usr/bin/python3
# -*- coding: utf-8 -*-
# File common.py
# Date 2019-05-30 14:38
# Author Medue

import config, sys, os
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))


def get_value(data, key, default_value=None):
    """
    从源数据获取指定key的值
    :param data: 源数据
    :param key: 指定key
    :param default_value: 默认值
    :return:
    """

    if key in data:
        return data[key]
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
    :return: string
    """
    return get_conf('base_url', 'https://riven.market/list/')+get_conf('separator', '/')+get_conf('platform', 'PC')
