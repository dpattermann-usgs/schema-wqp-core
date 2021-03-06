create table monitoring_loc
(data_source_id                 number
,code_value                     varchar2(500 char)
,description                    varchar2(4000 char)
,organization                   varchar2(4000 char)
,text                           varchar2(4000 char)
) parallel 4 compress pctfree 0 nologging cache
partition by range (data_source_id)
(partition monitoring_loc_garbage values less than (maxvalue)
);
