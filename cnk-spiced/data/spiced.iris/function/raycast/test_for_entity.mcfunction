#> spiced.iris:raycast/test_for_entity
#
# @within spiced.iris:raycast/loop
# @output
#   Result: 0
#   Success: 1 if an entity was hit, 0 otherwise

execute unless data storage spiced.iris:settings {TargetEntities: true} run return fail
execute align xyz unless entity @e[type=!#spiced.iris:ignore, tag=!spiced.iris.ignore, dx=0, dy=0, dz=0, tag=!spiced.iris.executing] run return fail
execute align xyz as @e[type=!#spiced.iris:ignore, tag=!spiced.iris.ignore, dx=0, dy=0, dz=0, tag=!spiced.iris.executing] run function spiced.iris:get_hitbox/entity
return run function spiced.iris:raycast/check_intersection/loop
