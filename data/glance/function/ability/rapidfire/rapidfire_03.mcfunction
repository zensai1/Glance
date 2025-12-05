#>glance:ability/rapidfire/rapidfire_03
#@execution -> glance:ability/rapidfire/rapidfire_01


##矢を召喚
    $execute at @s anchored eyes positioned ^ ^ ^0.3 run summon arrow ~ ~ ~ {Owner:$(UUID),crit:0b,Motion:[$(x)d,$(y)d,$(z)d],weapon:{id:bow,components:{enchantments:{"glance:bow":3}}}}