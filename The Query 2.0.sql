select 
orbud_ornnn_id, 
final_rating, 
max(last_update_dat)
from ORABUP0.TBBU_OVERALL_OUTPUT_IBR ibr
where orbud_ornnn_id in (
' 21766994 '
)
and last_update_dat < '31-DEC-2022'
-- and '01-may-2023 00:00:00.000000' between IBR.EFFECT_FROM_DAT and ibr.EFFECT_TO_DAT (+)
and final_rating is not null
group by  
orbud_ornnn_id, 
final_rating; 