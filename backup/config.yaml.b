common:
    platform: 'PC' # 平台
    base_url: 'https://riven.market/list' # url
    request_url: 'https://riven.market/_modules/riven/showrivens.php?'
    separator: '/' # 分隔符
    interval: 10 # 查询间隔
    process_num: 10 # 进程数
    thread_num: 10 # 线程数
    server_status: 0 # 是否ping 站点服务状态 1 检查， 0不检查，该参数需要管理员权限运行
    uri_param:
        baseurl: 'Lw=='
        platform: 'PC' # 平台 支持 PS4、PC、NSW、XB1
        limit: 25 # 每页查询条数
        recency: 1 # 发布时间，可使用 1：≤24 hours、7：≤7 days、30：≤1 month
        veiled: 'false' # 验证是否在线，强烈建议关闭
        onlinefirst: 'true' # 在线在前
        polarity: 'all' # 是否指定极性槽，可使用：Madurai、Naramon、Vazarin、Zenurik、Unairu
        mastery: 16 # 最大段位限制，可使用 16：最大16段，14：8-14段、12：8-12段、10：8-10段、8：8段
        rerolls: -1 # 最小白金价值
        price: 99999 # 最大白金价值
        rank: 'all' # 紫卡等级
        stats: 'Any' # 可指定紫卡属性，可使用参考riven_attr.py
        sort: 'price' # 排序字段，可使用time、weapon、price、rank、polarity、mastery、rerolls
        direction: 'ASC' # 排序方式，可使用DESC、ASC
        neg: 'all' # 可指定紫卡否属性，可使用参考riven_attr.py