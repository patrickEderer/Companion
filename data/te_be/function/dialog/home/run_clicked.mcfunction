scoreboard players set .unknown_block error 0

$function util:string/equals/init {1:$(action),2:fill}
execute if function util:string/equals/check run return run function te_be:dialog/fill/open

$function util:string/equals/init {1:$(action),2:copy}
execute if function util:string/equals/check run return run function te_be:dialog/copy/open

$function util:string/equals/init {1:$(action),2:paste}
execute if function util:string/equals/check run return run function te_be:dialog/paste/open