function equipped(Item, Spawn)
    while HasItem(Spawn, 157245)
    do 
	    PlayAnimation(Spawn, 16583)
	end
	Emote(Spawn, "feels empowered.")
	ModifyHP(Spawn, 1000000000)
end