# 每3天的23:50分清理一次日志(互助码不清理，proc_file.sh对该文件进行了去重)
50 23 */3 * * find /scripts/logs -name '*.log' | grep -v 'sharecodeCollection' | xargs rm -rf
#收集助力码
30 * * * * sh +x /scripts/docker/auto_help.sh collect >> /scripts/logs/auto_help_collect.log 2>&1

##############长期活动##############
# 签到
0 0,12 * * * cd /scripts && node jd_bean_sign.js >> /scripts/logs/jd_bean_sign.log 2>&1
# 京东变化
0 10 * * * node /scripts/jd_bean_change.js >> /scripts/logs/jd_bean_change.log 2>&1
# 取消关注
55 */4 * * * node /scripts/jd_unsubscribe.js >> /scripts/logs/jd_unsubscribe.log 2>&1
# 京东京豆
0 0,12 * * * node /scripts/jd_bean_sign.js >> /scripts/logs/jd_bean_sign.log 2>&1
# 兑换类
0,1,2 0 * * * node /scripts/jd_blueCoin.js >> /scripts/logs/jd_blueCoin.log 2>&1
0 0 * * * node /scripts/jd_car_exchange.js >> /scripts/logs/jd_car_exchange.log 2>&1
0 0-16/8 * * * node /scripts/jd_joy_reward.js >> /scripts/logs/jd_joy_reward.log 2>&1
# 种豆得豆
1 7-22 * * * node /scripts/jd_plantBean.js >> /scripts/logs/jd_plantBean.log 2>&1
# 东东农场
10 6,12,18 * * * node /scripts/jd_fruit.js >> /scripts/logs/jd_fruit.log 2>&1
# 东东萌宠
20 6,12,18 * * * node /scripts/jd_pet.js >> /scripts/logs/jd_pet.log 2>&1
# 东东图书馆
25 8,12,18 * * * node /scripts/jd_bookshop.js >> /scripts/logs/jd_bookshop.log 2>&1
# 宠汪汪
30 0 * * * node /scripts/jd_joy.js >> /scripts/logs/jd_joy.log 2>&1
51 5 * * * node /scripts/jd_joy.js >> /scripts/logs/jd_joy.log 2>&1
54 8 * * * node /scripts/jd_joy.js >> /scripts/logs/jd_joy.log 2>&1
57 11 * * * node /scripts/jd_joy.js >> /scripts/logs/jd_joy.log 2>&1
1 15 * * * node /scripts/jd_joy.js >> /scripts/logs/jd_joy.log 2>&1
4 18 * * * node /scripts/jd_joy.js >> /scripts/logs/jd_joy.log 2>&1
7 21 * * * node /scripts/jd_joy_feedPets.js >> /scripts/logs/jd_joy_feedPets.log 2>&1
10 11,14 * * * node /scripts/jd_joy_run.js >> /scripts/logs/jd_joy_run.log 2>&1
# 东东超市
15 0,1-23/6 * * * node /scripts/jd_superMarket.js >> /scripts/logs/jd_superMarket.log 2>&1
# 京东汽车
8 7 * * * node /scripts/jd_car.js >> /scripts/logs/jd_car.log 2>&1
# 京东家庭号
#45 */3 * * * node /scripts/jd_family.js >> /scripts/logs/jd_family.log 2>&1
# 进店领豆
0 0 * * * node /scripts/jd_shop.js >> /scripts/logs/jd_shop.log 2>&1
# 摇京豆
2 0 * * * node /scripts/jd_club_lottery.js >> /scripts/logs/jd_club_lottery.log 2>&1
# 抽奖机
3 0 * * * node /scripts/jd_lotteryMachine.js >> /scripts/logs/jd_lotteryMachine.log 2>&1
# 领取额外京豆
7 0 * * * node /scripts/jd_bean_home.js >> /scripts/logs/jd_bean_home.log 2>&1
# 京东排行榜
8 0 * * * node /scripts/jd_rankingList.js >> /scripts/logs/jd_rankingList.log 2>&1
# 全民开红包
9 0 * * * node /scripts/jd_redPacket.js >> /scripts/logs/jd_redPacket.log 2>&1
# 京东十元街
11 0 * * * node /scripts/jd_syj.js >> /scripts/logs/jd_syj.log 2>&1
# 东东小窝
12 0 * * * node /scripts/jd_small_home.js >> /scripts/logs/jd_small_home.log 2>&1
# 京东盲盒
27 8 * * * node /scripts/jd_sgmh.js >> /scripts/logs/jd_sgmh.log 2>&1
# 京东秒秒币
5 7 * * * node /scripts/jd_ms.js >> /scripts/logs/jd_ms.log 2>&1
# 京东赚赚
9 7 * * * node /scripts/jd_jdzz.js >> /scripts/logs/jd_jdzz.log 2>&1
# 京东快递
11 7 * * * node /scripts/jd_kd.js >> /scripts/logs/jd_kd.log 2>&1
# 签到领现金
5 8,22 * * * node /scripts/jd_cash.js >> /scripts/logs/jd_cash.log 2>&1
# 摇钱树
17 1-23/6 * * * node /scripts/jd_moneyTree.js >> /scripts/logs/jd_moneyTree.log 2>&1
# 天天提额
19 */3 * * * node /scripts/jd_daily_egg.js >> /scripts/logs/jd_daily_egg.log 2>&1
# 金融养猪
21 */3 * * * node /scripts/jd_pigPet.js >> /scripts/logs/jd_pigPet.log 2>&1
# 疯狂的JOY
# 0 1,23 * * * node /scripts/jd_crazy_joy.js >> /scripts/logs/jd_crazy_joy.log 2>&1
# 0 6 * * * node /scripts/crazy_joy_coin.js >> /scripts/logs/crazy_joy_coin.log 2>&1
# 4 12 * * * node /scripts/jd_crazy_joy_bonus.js >> /scripts/logs/jd_crazy_joy_bonus.log 2>&1
# 京东工厂
36 * * * * node /scripts/jd_jdfactory.js >> /scripts/logs/jd_jdfactory.log 2>&1
# 东东工厂
20 * * * * node /scripts/jd_dreamFactory.js >> /scripts/logs/jd_dreamFactory.log 2>&1
# 京喜农场
0 9,12,18 * * * node /scripts/jd_jxnc.js >> /scripts/logs/jd_jxnc.log 2>&1
# 删除优惠券(默认注释，如需要自己开启，如有误删，已删除的券可以在回收站中还原，慎用)
#20 9 * * 6 node /scripts/jd_delCoupon.js >> /scripts/logs/jd_delCoupon.log 2>&1
#京东保价
# 2 0,23 * * * node /scripts/jd_price.js >> /scripts/logs/jd_price.log 2>&1
#京东极速版签到+赚现金任务
3 1,6 * * * node /scripts/jd_speed_sign.js >> /scripts/logs/jd_speed_sign.log 2>&1
#京喜财富岛
12 */2 * * * node /scripts/jd_cfd.js >> /scripts/logs/jd_cfd.log 2>&1
#京东直播（又回来了）
10-20/5 12,23 * * * node /scripts/jd_live.js >> /scripts/logs/jd_live.log 2>&1

15 0,23 * * * node /scripts/jd_speed_redpocke.js >> /scripts/logs/jd_speed_redpocke.log 2>&1
#美丽研究院
1 7,12,19 * * * node /scripts/jd_beauty.js >> /scripts/logs/jd_beauty.log 2>&1

35 1,23 * * * node /scripts/jd_nzmh.js >> /scripts/logs/jd_nzmh.log 2>&1

1,31 0-23/1 * * * node /scripts/jd_live_redrain.js >> /scripts/logs/jd_live_redrain.log 2>&1

30 0-23/3 * * * node /scripts/jd_health.js >> /scripts/logs/jd_health.log 2>&1
#京东健康社区收集健康能量
5-45/20 * * * * node /scripts/jd_health_collect.js >> /scripts/logs/jd_health_collect.log 2>&1
# 幸运大转盘
10 10,23 * * * node /scripts/jd_market_lottery.js >> /scripts/logs/jd_market_lottery.log 2>&1

13 1,22,23 * * * node /scripts/jd_daily_lottery.js >> /scripts/logs/jd_daily_lottery.log 2>&1
# 领金贴
5 0 * * * node /scripts/jd_jin_tie.js >> /scripts/logs/jd_jin_tie.log 2>&1
# 跳跳乐瓜分京豆
15 0,12,22 * * * node /scripts/jd_jump.js >> /scripts/logs/jd_jump.log 2>&1

0 1,22 * * * node /scripts/jd_gold_creator.js >> /scripts/logs/jd_gold_creator.log 2>&1

0 0-23/4 * * * node /scripts/jd_mohe.js >> /scripts/logs/jd_mohe.log 2>&1

30 1,6,12,21 * * * node /scripts/jd_jxlhb.js >> /scripts/logs/jd_jxlhb.log 2>&1

20 1,21 * * * node /scripts/jd_mcxhd.js >> /scripts/logs/jd_mcxhd.log 2>&1

0 1,21 * * * node /scripts/jd_star_shop.js >> /scripts/logs/jd_star_shop.log 2>&1

10,40 * * * * node /scripts/jd_big_winner.js >> /scripts/logs/jd_big_winner.log 2>&1
