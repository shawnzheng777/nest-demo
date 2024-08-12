CREATE  TABLE pcg_video_ads.ads_all_ecological_creator_topic_label_di(
	`imp_date` BIGINT COMMENT '日期',
	`poi_id` STRING COMMENT '兴趣点id：topic标签',
	`topic_name` STRING COMMENT 'topic中文',
	`topic_rank` BIGINT COMMENT 'topic总分排序',
	`eco_sub_type` STRING COMMENT '生态二级品类',
	`eco_sub_type_name` STRING COMMENT '生态二级品类名称',
	`vids` STRING COMMENT 'vid拼接vid排序数组',
	`eco_type` STRING COMMENT '生态一级品类',
	`eco_type_name` STRING COMMENT '生态一级品类名称',
	`eco_type_name_group` STRING COMMENT '生态一级品类大类',
	`eco_type_name_group_rank` BIGINT COMMENT '生态一级品类大类在tab的排序',
	`eco_type_group` BIGINT COMMENT '生态一级品类大类',
	`topic_score` DOUBLE COMMENT 'topic总分',
	`is_paid_like_watch` BIGINT COMMENT '是否带“会员爱看”标签，1表示是，0表示不是'
)
COMMENT '创作号生态供需主题标签结果表' 
PARTITION BY LIST( `imp_date` )
(
	PARTITION default
)
STORED AS ORCFILE
