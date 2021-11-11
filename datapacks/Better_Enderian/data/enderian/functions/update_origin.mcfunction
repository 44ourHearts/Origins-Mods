tag @s[nbt={cardinal_components:{"origins:origin":{OriginLayers:[{Origin:"origins:enderian"}]}}}] add enderian
tag @s[nbt={cardinal_components:{"origins:origin":{OriginLayers:[{Origin:"origins:enderian_no_reflexes"}]}}}] add enderian
tag @s[nbt={cardinal_components:{"origins:origin":{OriginLayers:[{Origin:"origins:enderian_no_tp"}]}}}] add enderian
tag @s[nbt={cardinal_components:{"origins:origin":{OriginLayers:[{Origin:"origins:enderian_default"}]}}}] add enderian
origin set @a[tag=enderian] origins:origin origins:human
execute if score tp powers matches 1 if score reflexes powers matches 1 run origin set @s[tag=enderian] origins:origin origins:enderian
execute if score tp powers matches 1 if score reflexes powers matches 0 run origin set @s[tag=enderian] origins:origin origins:enderian_no_reflexes
execute if score tp powers matches 0 if score reflexes powers matches 1 run origin set @s[tag=enderian] origins:origin origins:enderian_no_tp
execute if score tp powers matches 0 if score reflexes powers matches 0 run origin set @s[tag=enderian] origins:origin origins:enderian_default
tag @s remove enderian