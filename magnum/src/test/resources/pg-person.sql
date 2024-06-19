drop table if exists person cascade;

create table person (
    id bigint primary key generated always as identity,
    first_name varchar(50),
    last_name varchar(50) not null,
    is_admin boolean not null,
    other_id uuid,
    created timestamptz not null default now()
);

insert into
    person (
        first_name,
        last_name,
        is_admin,
        other_id,
        created
    )
values
    (
        'George',
        'Washington',
        true,
        '4260a10a-3b25-45aa-9b09-3fd962cda591',
        now()
    ),
    (
        'Alexander',
        'Hamilton',
        true,
        '4260a10a-3b25-45aa-9b09-3fd962cda592',
        now()
    ),
    (
        'John',
        'Adams',
        true,
        '4260a10a-3b25-45aa-9b09-3fd962cda593',
        now()
    ),
    (
        'Benjamin',
        'Franklin',
        true,
        '4260a10a-3b25-45aa-9b09-3fd962cda594',
        now()
    ),
    (
        'John',
        'Jay',
        true,
        '4260a10a-3b25-45aa-9b09-3fd962cda595',
        now()
    ),
    (
        'Thomas',
        'Jefferson',
        true,
        '4260a10a-3b25-45aa-9b09-3fd962cda596',
        now()
    ),
    (
        'James',
        'Madison',
        true,
        '4260a10a-3b25-45aa-9b09-3fd962cda597',
        now()
    ),
    (
        null,
        'Nagro',
        false,
        null,
        timestamp '1997-08-12'
    );
