col c1 heading 'owner' format a15
col c2 heading 'name' format a40
col c3 heading 'type' format a10

select
   owner       c1,
   object_type c3,
   object_name c2
from
   dba_objects
where
   status != 'VALID'
order by
   owner,
   object_type;
