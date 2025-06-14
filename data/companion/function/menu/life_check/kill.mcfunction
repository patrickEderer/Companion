execute as @e[tag=menu,tag=!menu-center] if score @s menu_player_id = @e[tag=menu-center,sort=nearest,limit=1] menu_player_id run kill @s
kill @s