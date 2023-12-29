create schema if not exists `ssm` default charset utf8mb4 collate utf8mb4_general_ci;
use `ssm`;

set names 'utf8mb4';
set foreign_key_checks = 0;

drop table if exists `mission`;

create table `mission` (
    `id` int unsigned not null auto_increment,

    `name` varchar(80) not null unique,
    `cospar_id` varchar(15) default null unique,
    `satcat_no` int unsigned default null unique,

    `type` varchar(255) not null,

    `launch_date_utc` datetime not null,
    `landing_date_utc` datetime default null,

    `perigee_meters` int unsigned default null,
    `apogee_meters` int unsigned default null,
    `inclination_deg` double default null,
    `period_min` double default null,

    `created` datetime not null default current_timestamp(),
    `updated` datetime not null default current_timestamp() on update current_timestamp(),

    primary key (`id`)
) engine=innodb default charset=utf8mb4 collate=utf8mb4_general_ci auto_increment=1;

set foreign_key_checks = 1;