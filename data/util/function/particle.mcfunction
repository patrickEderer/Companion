$function util:string/equals/init {1:$(reason),2:summon}
execute if function util:string/equals/check align xyz positioned ~.5 ~.5 ~.5 run particle trial_omen ~ ~ ~ 0 0 0 0 1 force @a

$function util:string/equals/init {1:$(reason),2:check}
execute if function util:string/equals/check align xyz positioned ~.5 ~.5 ~.5 run particle composter ~ ~ ~ 0 0 0 0 1 force @a

$function util:string/equals/init {1:$(reason),2:operation}
execute if function util:string/equals/check align xyz positioned ~.5 ~.5 ~.5 run particle poof ~ ~ ~ 0 0 0 0 1 force @a

$function util:string/equals/init {1:$(reason),2:store}
execute if function util:string/equals/check align xyz positioned ~.5 ~.5 ~.5 run particle soul ~ ~ ~ 0 0 0 0 1 force @a