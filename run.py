#!/usr/bin/python3
# -*- coding: utf-8 -*-
# File run.py
# Date 2019-05-30 14:46
# Author Medue

import sys
import os

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

try:
    import common
    import get_http
    import riven
    import riven_list
except Exception:
    raise

print(riven_list.riven_list)
exit()
# 获取顶级分类
result = get_http.GetHttp(url=common.get_base_url()+'Opticor').text
riven.get_select_option_value(result)
