#scoreboard objectives remove mob_hp
#scoreboard objectives remove mob_max_hp
#scoreboard objectives remove hurttimestamp
#tag @e remove hashp

scoreboard objectives add temp dummy

scoreboard objectives add fall_d minecraft.custom:minecraft.fall_one_cm
scoreboard objectives add player_damage_math dummy
scoreboard objectives add damage_reduction dummy

scoreboard objectives add damage_trigger minecraft.custom:minecraft.damage_dealt_resisted
scoreboard objectives add damage_math dummy
scoreboard objectives add base_weapon_damage dummy
scoreboard objectives add add_multiplier dummy
scoreboard objectives add mul_multiplier dummy
scoreboard objectives add mob_hp dummy
scoreboard objectives add mob_max_hp dummy
scoreboard objectives add mob_regeneration dummy
scoreboard objectives add SILLY_countlefthand dummy
scoreboard objectives add SILLY_lefthandtimer minecraft.custom:minecraft.play_time
scoreboard objectives add coins dummy
scoreboard objectives add bits dummy
scoreboard objectives add sidebar dummy
scoreboard objectives add lvl dummy
scoreboard objectives add hp dummy
scoreboard objectives add max_hp dummy
scoreboard objectives add old_max_hp dummy
scoreboard objectives add health_regen dummy
scoreboard objectives add mana dummy
scoreboard objectives add mana_regen dummy
scoreboard objectives add max_mana dummy
scoreboard objectives add max_mana_math dummy
scoreboard objectives add time dummy
scoreboard objectives add int dummy
scoreboard objectives add def dummy
scoreboard objectives add strength dummy
scoreboard objectives add speed dummy
scoreboard objectives add real_health health
scoreboard objectives add x dummy
scoreboard objectives add y dummy
scoreboard objectives add z dummy
scoreboard objectives add cr dummy
scoreboard objectives add cd dummy
scoreboard objectives add combat dummy
scoreboard objectives add combat_xp dummy
scoreboard objectives add combat_xp_old dummy
scoreboard objectives add combat_xp_dupe dummy
scoreboard objectives add combat_xp_new dummy
scoreboard objectives add combat_xp_new_time dummy
scoreboard objectives add combat_xp_need dummy
scoreboard objectives add mining dummy
scoreboard objectives add mining_xp dummy
scoreboard objectives add mining_xp_old dummy
scoreboard objectives add mining_xp_dupe dummy
scoreboard objectives add mining_xp_new dummy
scoreboard objectives add mining_xp_new_time dummy
scoreboard objectives add mining_xp_need dummy
scoreboard objectives add team dummy
scoreboard objectives add random dummy
scoreboard objectives add mana_usage dummy
scoreboard objectives add mana_usage_time dummy
scoreboard objectives add mana_usage_reason dummy
scoreboard objectives add mob_y dummy
scoreboard objectives add combat_lvl_sound minecraft.custom:minecraft.play_time
scoreboard objectives add mining_lvl_sound minecraft.custom:minecraft.play_time
scoreboard objectives add quest_active dummy
scoreboard objectives add slayer_active dummy
scoreboard objectives add mob_kills minecraft.custom:minecraft.mob_kills
scoreboard objectives add mining_speed dummy
scoreboard objectives add ferocity dummy

# bow
scoreboard objectives add bow_strength dummy
scoreboard objectives add bow_used minecraft.used:minecraft.bow
scoreboard objectives add bow_base_weapon_damage dummy
scoreboard objectives add bow_add_multiplier dummy
scoreboard objectives add bow_mul_multiplier dummy
scoreboard objectives add bow_cr dummy
scoreboard objectives add bow_cd dummy

scoreboard objectives add magic_add_multiplier dummy
scoreboard objectives add magic_mul_multiplier dummy
scoreboard objectives add base_ability_damage dummy
scoreboard objectives add ability_scaling dummy


# items
scoreboard objectives add rogue_duration dummy
scoreboard objectives add rogue_used dummy
scoreboard objectives add aote_duration dummy
scoreboard objectives add aote_used dummy
scoreboard objectives add vertical_motion dummy
# kill_total is variable used for calculating damage bonus based on mob kills, currently used by raider axe
scoreboard objectives add kill_total dummy
scoreboard objectives add raider_kills dummy
scoreboard objectives add raider_real_kills dummy
scoreboard objectives add squid_cooldown minecraft.custom:minecraft.play_time
scoreboard objectives add squid_used minecraft.custom:minecraft.play_time
scoreboard objectives add golem_cooldown minecraft.custom:minecraft.play_time
scoreboard objectives add golem_used minecraft.custom:minecraft.play_time
scoreboard objectives add celeste_used minecraft.custom:minecraft.play_time
scoreboard objectives add starlight_used minecraft.custom:minecraft.play_time
scoreboard objectives add starlight_cooldown minecraft.custom:minecraft.play_time
scoreboard objectives add starlight_duration dummy
scoreboard objectives add starlight_memory dummy
scoreboard objectives add aotd_used minecraft.custom:minecraft.play_time

scoreboard objectives add tactician_bonus dummy


scoreboard objectives add leaflet_heal minecraft.custom:minecraft.play_time

scoreboard objectives add dungeon dummy

# wisdom
scoreboard objectives add combat_wisdom dummy


scoreboard players set 0 int 0
scoreboard players set 1 int 1
scoreboard players set 2 int 2
scoreboard players set 3 int 3
scoreboard players set 4 int 4
scoreboard players set 5 int 5
scoreboard players set 6 int 6
scoreboard players set 7 int 7
scoreboard players set 8 int 8
scoreboard players set 9 int 9
scoreboard players set 10 int 10
scoreboard players set 15 int 15
scoreboard players set 20 int 20
scoreboard players set 25 int 25
scoreboard players set 30 int 30
scoreboard players set 35 int 35
scoreboard players set 40 int 40
scoreboard players set 45 int 45
scoreboard players set 50 int 50
scoreboard players set 55 int 55
scoreboard players set 60 int 60
scoreboard players set 65 int 65
scoreboard players set 66 int 66
scoreboard players set 70 int 70
scoreboard players set 75 int 75
scoreboard players set 80 int 80
scoreboard players set 85 int 85
scoreboard players set 90 int 90
scoreboard players set 95 int 95
scoreboard players set 100 int 100
scoreboard players set 105 int 105
scoreboard players set 1000 int 1000



# here everything related to sidebar setup (adding teams, colors, setdisplay etc)
function main:player/sidebar/setup