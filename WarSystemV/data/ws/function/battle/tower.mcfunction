#fill ~-1 ~3 ~-1 ~1 ~3 ~1 stripped_birch_wood replace birch_wood
#fill ~-1 ~3 ~-1 ~1 ~3 ~1 stripped_birch_wood replace air
#fill ~-2 ~3 ~-2 ~2 ~3 ~2 birch_wood replace air
#fill ~-3 ~3 ~-3 ~4 ~4 ~4 air replace birch_wood hollow

#fill ~-3 ~2 ~-3 ~3 ~4 ~3 air replace birch_wood outline
#/summon acacia_boat ~ ~ ~ {Invulnerable:1b,Tags:["gw_tower"]}

# Age the current tower
fill ~-2 ~-9 ~-2 ~2 ~0 ~2 stripped_birch_wood replace birch_wood
fill ~-2 ~-9 ~-2 ~2 ~0 ~2 stripped_birch_wood replace air hollow

# Build the new tower
fill ~-2 ~-9 ~-2 ~2 ~0 ~2 birch_wood replace air hollow

# Remove the previous tower
fill ~-3 ~-10 ~-3 ~3 ~1 ~3 air replace stripped_birch_wood outline
fill ~-3 ~-10 ~-3 ~3 ~1 ~3 air replace birch_wood outline

# Rear opening

# Boat facing south (+Z)
execute if entity @s[y_rotation=-45..45] run fill ~-1 ~-9 ~-2 ~1 ~-1 ~-2 air

# Boat facing west (-X)
execute if entity @s[y_rotation=45..135] run fill ~2 ~-9 ~-1 ~2 ~-1 ~1 air

# Boat facing north (-Z)
execute if entity @s[y_rotation=135..180] run fill ~-1 ~-9 ~2 ~1 ~-1 ~2 air
execute if entity @s[y_rotation=-180..-135] run fill ~-1 ~-9 ~2 ~1 ~-1 ~2 air

# Boat facing east (+X)
execute if entity @s[y_rotation=-135..-45] run fill ~-2 ~-9 ~-1 ~-2 ~-1 ~1 air

# Force hollow
fill ~-1 ~-8 ~-1 ~1 ~-1 ~1 air