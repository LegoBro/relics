#capture for entities
$execute as @p[tag=id,tag=turn] run function cards:$(path)/discover
$say cards:$(path)/capture