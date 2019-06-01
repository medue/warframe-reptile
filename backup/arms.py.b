#!/usr/bin/python3
# -*- coding: utf-8 -*-
arms = {
    'Amprex': {'label': '安培克斯', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Arca_Plasmor': {'label': '弧电离子枪', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Argonak': {'label': '氩格纳克', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Astilla': {'label': '碎裂者', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Attica': {'label': '阿提卡', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Battacor': {'label': '武使之力', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Baza': {'label': '苍鹰', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Boar': {'label': '野猪', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Boltor': {'label': '螺钉步枪', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Braton': {'label': '布莱顿', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Burston': {'label': '伯斯顿', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Buzlok': {'label': '巴兹火枪', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Cernos': {'label': '西诺斯', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Convectrix': {'label': '导热聚焦枪', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Corinth': {'label': '科林斯', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Daikyu': {'label': '大久和弓', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Dera': {'label': '德拉', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Drakgoon': {'label': '龙骑兵', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Dread': {'label': '恐惧', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Exergis': {'label': '晶能放射器', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Ferrox': {'label': '铁晶磁轨炮', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Flux_Rifle': {'label': '通量射线步枪', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Glaxion': {'label': '冷冻光束步枪', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Gorgon': {'label': '蛇发女妖', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Grakata': {'label': '葛拉卡达', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Grinlok': {'label': '葛恩火枪', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Harpak': {'label': '哈帕克', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Hek': {'label': '海克', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Hema': {'label': '血肢', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Hind': {'label': '雌鹿', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Ignis': {'label': '伊格尼斯', 'lowest_price': 100, 'highest_price': None, 'whether_query': True},
    'Javlok': {'label': '燃焰标枪', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Karak': {'label': '卡拉克', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Kohm': {'label': '寇恩热能枪', 'lowest_price': 300, 'highest_price': None, 'whether_query': True},
    'Lanka': {'label': '兰卡', 'lowest_price': 200, 'highest_price': None, 'whether_query': True},
    'Latron': {'label': '拉特昂', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Lenz': {'label': '楞次弓', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Miter': {'label': '米特尔', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Mutalist_Cernos': {'label': '异融西诺斯', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Mutalist_Quanta': {'label': '异融量子枪', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Nagantaka': {'label': '噬蛇弩', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Ogris': {'label': '食人女魔', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Opticor': {'label': '奥堤克光子枪', 'lowest_price': 150, 'highest_price': None, 'whether_query': True},
    'Panthera': {'label': '猎豹', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Paracyst': {'label': '附肢寄生者', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Paris': {'label': '帕里斯', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Penta': {'label': '潘塔', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Phage': {'label': '噬菌者', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Phantasma': {'label': '幻离子', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Quanta': {'label': '量子切割器', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Quartakk': {'label': '夸塔克', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Rubico': {'label': '绝路', 'lowest_price': 900, 'highest_price': None, 'whether_query': True},
    'Scourge': {'label': '祸根', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Simulor': {'label': '重力奇点拟成枪', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Snipetron': {'label': '狙击特昂', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Sobek': {'label': '鳄神', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Soma': {'label': '月神', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Stradavar': {'label': '斯特拉迪瓦', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Strun': {'label': '斯特朗', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Supra': {'label': '苏普拉', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Sybaris': {'label': '席芭莉丝', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Synapse': {'label': '突触生化枪', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Tenora': {'label': '双簧管-', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Tetra': {'label': '特拉', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Tiberon': {'label': '狂鲨', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Tigris': {'label': '猛虎', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Tonkor': {'label': '征服榴炮', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Torid': {'label': '托里德', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Vectis': {'label': '守望者', 'lowest_price': 150, 'highest_price': None, 'whether_query': True},
    'Veldt': {'label': '草原猎手', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Vulkar': {'label': '金工火神', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Zarr': {'label': '沙皇', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Zenith': {'label': '天穹之顶', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Zhuge': {'label': '诸葛连弩', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Acrid': {'label': '阿克里德', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Afuris': {'label': '盗贼双枪', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Akbolto': {'label': '螺钉双枪', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Akbronco': {'label': '野马双枪', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Akjagara': {'label': '觉醒双枪', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Aklato': {'label': '拉托双枪', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Aklex': {'label': '雷克斯双枪', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Akmagnus': {'label': '麦格努斯双枪', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Aksomati': {'label': '轻灵月神双枪', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Akstiletto': {'label': '史提托双枪', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Akvasto': {'label': '瓦斯托双枪', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Akzani': {'label': '荒谬双枪-', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Angstrum': {'label': '安格斯壮', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Arca_Scisco': {'label': '弧电探知者', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Atomos': {'label': '原子矿融炮', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Azima': {'label': '方位角', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Ballistica': {'label': '布里斯提卡,', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Bolto': {'label': '螺钉手枪', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Brakk': {'label': '布拉克', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Bronco': {'label': '野马', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Castanas': {'label': '雷爆信标', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Catchmoon': {'label': '捕月', 'lowest_price': 150, 'highest_price': None, 'whether_query': True},
    'Cestra': {'label': '锡斯特', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Cycron': {'label': '循环离子枪', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Despair': {'label': '绝望', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Detron': {'label': '德特昂', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Dual_Cestra': {'label': '锡斯特双枪', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Dual_Toxocyst': {'label': '毒囊双枪', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Embolist': {'label': '安柏勒斯', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Euphona_Prime': {'label': '悦音Prime', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Furis': {'label': '盗贼', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Fusilai': {'label': '齐射玻刃', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Gammacor': {'label': '咖玛腕甲枪', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Gaze': {'label': '凝目', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Hikou': {'label': '飞扬', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Hystrix': {'label': '豪猪', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Knell': {'label': '丧钟', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Kohmak': {'label': '寇恩霰机枪', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Kraken': {'label': '北海巨妖', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Kulstar': {'label': '杀星', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Kunai': {'label': '苦无', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Lato': {'label': '拉托', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Lex': {'label': '雷克斯', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Magnus': {'label': '麦格努斯', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Marelok': {'label': '玛瑞火枪', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Nukor': {'label': '努寇微波枪', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Ocucor': {'label': '视使之触', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Pandero': {'label': '手鼓', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Plinx': {'label': '漫射者', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Pox': {'label': '脓痘', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Pyrana': {'label': '食人鱼', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Rattleguts': {'label': '响胆', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Seer': {'label': '预言者', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Sicarus': {'label': '暗杀者', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Sonicor': {'label': '超音波冲击枪', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Spectra': {'label': '光谱切割器', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Spira': {'label': '旋刃飞刀', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Staticor': {'label': '静电能量导引枪', 'lowest_price': 80, 'highest_price': None, 'whether_query': True},
    'Stubba': {'label': '史度巴', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Stug': {'label': '史特克', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Talons': {'label': '鹰爪', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Tombfinger': {'label': '墓指', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Twin_Grakatas': {'label': '双子葛拉卡达', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Twin_Gremlins': {'label': '双子小精灵', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Twin_Kohmak': {'label': '双子寇恩霰机枪', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Twin_Rogga': {'label': '双子罗格', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Twin_Vipers': {'label': '双子蝰蛇', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Tysis': {'label': '啐沫者', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Vasto': {'label': '瓦斯托', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Viper': {'label': '蝰蛇', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Zakti': {'label': '毒芽', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Zylok': {'label': '席尔火枪', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Ack_%26_Brunt': {'label': '认知&冲击', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Amphis': {'label': '双头蛇', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Anku': {'label': '夺魂死神', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Ankyros': {'label': '甲龙双拳', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Arca_Titron': {'label': '弧电振子锤', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Atterax': {'label': '阿特拉克斯', 'lowest_price': 80, 'highest_price': None, 'whether_query': True},
    'Balla': {'label': '宝拉', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Bo': {'label': '玻之武杖', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Boltace': {'label': '螺钉拐刃', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Broken_Scepter': {'label': '破损珽杖', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Broken_War': {'label': '破碎的战争之剑', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Cassowar': {'label': '鹤鸵长戟', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Caustacyst': {'label': '灼蚀变体镰', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Ceramic_Dagger': {'label': '陶瓷匕首', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Cerata': {'label': '裸鳃刃', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Cobra_%26_Crane': {'label': '眼镜蛇&鹤', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Cronus': {'label': '克洛诺斯', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Cyath': {'label': '西亚什', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Dakra_Prime': {'label': '达克拉Prime', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Dark_Dagger': {'label': '暗黑匕首', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Dark_Split-Sword': {'label': '暗黑分合剑', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Dark_Sword': {'label': '暗黑长剑', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Dehtat': {'label': '德塔特', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Destreza': {'label': '技巧之剑', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Dex_Dakra': {'label': 'Dex达克拉双剑', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Dokrahm': {'label': '多克拉姆', 'lowest_price': 80, 'highest_price': None, 'whether_query': True},
    'Dragon_Nikana': {'label': '龙之侍刃', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Dual_Cleavers': {'label': '斩肉双刀', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Dual_Ether': {'label': '苍穹双剑', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Dual_Heat_Swords': {'label': '烈焰双剑', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Dual_Ichor': {'label': '恶脓双斧', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Dual_Kamas': {'label': '双短柄战镰', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Dual_Keres': {'label': '凯瑞斯双刀', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Dual_Raza': {'label': '锋月双斧', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Dual_Skana': {'label': '空刃双刀', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Dual_Zoren': {'label': '佐伦双斧', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Endura': {'label': '三叶坚韧', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Ether_Daggers': {'label': '苍穹匕首', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Ether_Reaper': {'label': '苍穹死神', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Ether_Sword': {'label': '苍穹之剑', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Falcor': {'label': '猎鹰轮', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Fang': {'label': '狼牙', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Fragor': {'label': '重击巨锤', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Furax': {'label': '弗拉克斯', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Galatine': {'label': '迦伦提恩', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Galvacord': {'label': '电流刺索', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Gazal_Machete': {'label': '加扎勒反曲刀', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Glaive': {'label': '战刃', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Gram': {'label': '格拉姆', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Guandao': {'label': '关刀', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Gunsen': {'label': '军扇', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Halikar': {'label': '哈利卡', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Hate': {'label': '憎恨', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Heat_Dagger': {'label': '烈焰短剑', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Heat_Sword': {'label': '烈焰长剑', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Heliocor': {'label': '赫利俄光锤', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Hirudo': {'label': '蚂蟥', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Jat_Kittag': {'label': '喷射战锤', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Jat_Kusar': {'label': '喷射锁镰', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Jaw_Sword': {'label': '蛇颚刀', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Kama': {'label': '短柄战镰', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Karyst': {'label': '凯洛斯特', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Kesheg': {'label': '怯薛', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Kestrel': {'label': '红隼', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Kogake': {'label': '科加基', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Korrudo': {'label': '库鲁多', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Kreska': {'label': '直镐', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Krohkur': {'label': '克鲁古尔', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Kronen': {'label': '皇家拐刃', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Kronsh': {'label': '客隆什', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Lacera': {'label': '悲痛之刃', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Lecta': {'label': '勒克塔', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Lesion': {'label': '病变', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Machete': {'label': '马谢特砍刀', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Magistar': {'label': '执法者', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Mewan': {'label': '密丸', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Mios': {'label': '牝狮神', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Mire': {'label': '米尔', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Nami_Skyla': {'label': '海波斯库拉对剑', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Nami_Solo': {'label': '海波单剑', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Nikana': {'label': '侍刃', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Ninkondi': {'label': '降灵追猎者', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Obex': {'label': '奥比克斯', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Ohma': {'label': '欧玛', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Okina': {'label': '翁', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Ooltha': {'label': '乌尔萨', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Orthos': {'label': '欧特鲁斯', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Orvius': {'label': '灵枢', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Pangolin_Sword': {'label': '鲮鲤剑', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Paracesis': {'label': '心智之殁', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Plague_Keewar': {'label': '瘟疫奇沃', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Plague_Kripath': {'label': '瘟疫克里帕丝', 'lowest_price': 300, 'highest_price': None, 'whether_query': True},
    'Plasma_Sword': {'label': '等离子长剑', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Prova': {'label': '普罗沃', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Pupacyst': {'label': '毒囊骨茧', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Rabvee': {'label': '拉比威', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Reaper_Prime': {'label': '收割者Prime', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Redeemer': {'label': '救赎者', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Ripkas': {'label': '锐卡斯', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Sarpa': {'label': '蛇刃', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Scindo': {'label': '分裂斩斧', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Scoliac': {'label': '嵴椎节鞭', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Sepfahn': {'label': '瑟普梵', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Serro': {'label': '电能斩锯', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Shaku': {'label': '双节尺棍', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Sheev': {'label': '希芙', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Sibear': {'label': '西伯利亚冰锤', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Sigma_%26_Octantis': {'label': '西格玛&南极座', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Silva_%26_Aegis': {'label': '席瓦&神盾', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Skana': {'label': '空刃', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Skiajati': {'label': '影生', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Sydon': {'label': '恶龙', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Tatsu': {'label': '龙辰', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Tekko': {'label': '铁钩手甲', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Tipedo': {'label': '提佩多', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Tonbo': {'label': '蜻蜓薙', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Twin_Basolk': {'label': '双子巴萨克', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Twin_Krohkur': {'label': '双子克鲁古尔', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Venka': {'label': '凯旋之爪', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Volnus': {'label': '创伤', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'War': {'label': '战争之剑', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Wolf_Sledge': {'label': '恶狼战锤', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Zenistar': {'label': '天顶之星', 'lowest_price': 100, 'highest_price': None, 'whether_query': True},
    'Artax': {'label': '阿塔克斯', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Burst_Laser': {'label': '激光点发', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Deconstructor': {'label': '分离', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Deth_Machine_Rifle': {'label': '死亡机枪', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Laser_Rifle': {'label': '激光步枪', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Stinger': {'label': '毒刺', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Sweeper': {'label': '扫除者', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
    'Vulklok': {'label': '金工火枪', 'lowest_price': None, 'highest_price': None, 'whether_query': False},
}
