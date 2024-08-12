CREATE  TABLE pcg_video_dim.dim_all_creator_vcuid_eco_author_type_di(
	`imp_date` BIGINT COMMENT '日期',
	`vcuid` STRING COMMENT '创作号vcuid',
	`eco_author_type` STRING COMMENT '生态作者分类',
	`eco_author_type_name` STRING COMMENT '生态作者分类名称',
	`eco_author_type_update_date` STRING COMMENT '生态作者分类更新日期，yyyyMMdd',
	`ip_author_type` STRING COMMENT 'IP内容作者分类【原创、二创】',
	`ip_author_type_update_date` STRING COMMENT 'IP内容作者分类更新日期，yyyyMMdd',
	`is_need_update_eco_flag` STRING COMMENT '生态作者分类是否需要更新，0表示不需要，1表示需要',
	`is_need_update_ip_flag` STRING COMMENT 'IP内容作者分类是否需要更新，0表示不需要，1表示需要'
)
COMMENT '昨日有发文的作者中需要更新分类的增量数据' 
PARTITION BY LIST( `imp_date` )
(
	PARTITION default
)
STORED AS ORCFILE COMPRESS