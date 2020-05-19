local IcemanesCometh = 18
function used(Item, Player)
    if GetQuestStep(Player, IcemanesCometh) == 1 then
	    target = GetTarget(Player)
		if GetName(target) == 'an icemane cub' then
		    if not IsInCombat(target) then
			    CastEntityCommand(Player, target, 1278, "Leash")
			end
		end
	end
end