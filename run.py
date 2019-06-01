#!/usr/bin/python3
# -*- coding: utf-8 -*-
# File run.py
# Date 2019-05-30 14:46
# Author Medue

import sys
import os
from math import ceil
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

try:
    from common import *
    import get_http
    import riven
except Exception:
    raise

if get_value(get_conf(), 'server_status', 0) == 1:
    import ping
    from urllib.parse import urlparse
    url_info = urlparse(get_base_url())
    ping.Pinger().sendPing(target_host=url_info.netloc)

# 分析结果
result = []
output = []
# 获取要查询的武器列表
arms_list = get_arms_list()
if not arms_list:
    exit('没有需要查询的武器')

for arms_name in arms_list:
    # 获取紫卡列表请求URL
    riven_list_request_url = get_riven_list_url(arms_name)
    # 获取一页信息
    riven_html = get_http.GetHttp(url=riven_list_request_url).text
    # 获取满足条件的紫卡数
    total_riven_num = riven.get_page_num(riven_html)
    output = {'arms_name': {'total': total_riven_num}}
    if not total_riven_num:
        continue
    # 计算分页总页数
    total_page = ceil(total_riven_num / int(get_value(get_conf(), 'limit', 1)))
    # 第一次处理&写入result
    result = riven.get_riven_list_data(riven_html, result, arms_list[arms_name]['label'])
    # 按页发起紫卡列表请求
    for page in range(total_page):
        riven_list_request_url_all = get_riven_list_url(arms_name, page+2)
        riven_html_all = get_http.GetHttp(url=riven_list_request_url).text
        result = riven.get_riven_list_data(riven_html_all, result, arms_list[arms_name]['label'])
print(result)
