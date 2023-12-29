use `ssm`;

set names 'utf8mb4';
set foreign_key_checks = 0;

truncate table `mission`;

set foreign_key_checks = 1;

insert into `mission` (`id`, `name`, `type`, `cospar_id`, `satcat_no`, `launch_date_utc`, `landing_date_utc`,
                       `perigee_meters`, `apogee_meters`, `inclination_deg`, `period_min`)
values # https://en.wikipedia.org/wiki/STS-1
       (1, 'STS-1', 'Test flight', '1981-034A', 12399, '1981-04-12 12:00:04', '1981-04-14 18:20:57', 246000, 274000, 40.3, 89.88),
       # https://en.wikipedia.org/wiki/STS-2
       (2, 'STS-2', 'Test flight', '1981-111A', 12953, '1981-11-12 15:09:59', '1981-11-14 21:23:11', 222000, 231000, 38.03, 89),
       # https://en.wikipedia.org/wiki/STS-3
       (3, 'STS-3', 'Test flight', '1982-022A', 13106, '1982-03-22 16:00:00', '1982-03-30 16:04:46', 241000, 249000, 38, 89.4),
       # https://en.wikipedia.org/wiki/STS-4
       (4, 'STS-4', 'Test flight', '1982-065A', 13300, '1982-06-27 15:00:00', '1982-07-04 16:09:31', 295000, 302000, 28.5, 90.3),
       # https://en.wikipedia.org/wiki/STS-5
       (5, 'STS-5', 'Communications satellites deployment', '1982-110A', 13650, '1982-11-11 12:19:00', '1982-11-16 14:33:26', 294000, 317000, 28.5, 90.5),
       # https://en.wikipedia.org/wiki/STS-6
       (6, 'STS-6', 'TDRS-A satellite deployment', '1983-026A', 13968, '1983-04-04 18:30:00', '1983-04-09 18:53:42', 288000, 295000, 28.5, 90.4),
       # https://en.wikipedia.org/wiki/STS-7
       (7, 'STS-7', 'Communications satellites deployment', '1983-059A', 14132, '1983-06-18 11:33:00', '1983-06-24 13:56:59', 299000, 307000, 28.3, 90.6),
       # https://en.wikipedia.org/wiki/STS-8
       (8, 'STS-8', 'Communications satellite deployment', '1983-089A', 14312, '1983-08-30 06:32:00', '1983-09-05 07:40:13', 348000, 356000, 28.51, 90.6),
       # https://en.wikipedia.org/wiki/STS-9
       (9, 'STS-9', 'Microgravity research', '1983-116A', 14523, '1983-11-28 16:00:00', '1983-12-08 23:47:24', 240000, 253000, 57, 89.5),
       # https://en.wikipedia.org/wiki/STS-41-B
       (10, 'STS-41-B', 'Communications satellites deployment', '1984-011A', 14681, '1984-02-03 13:00:00', '1984-02-11 12:15:55', 3070000, 317000, 28.5, 90.8);
