--[[
	Script Name		:	ItemScripts/RyGorrExplosiveMiningBarrel.lua
	Script Purpose	:	for the item "Ry'Gorr Explosive Mining Barrel"
	Script Author	:	theFoof
	Script Date		:	2013.6.12
	Script Notes	:
--]]

local RyGorrOperations = 60

function used(Item, Player)
	if GetQuestStep(Player, RyGorrOperations) == 1 then
		if GetZoneID(GetZone(Player)) == 470 then
			local X = GetX(Player)
			local Y = GetY(Player)
			local Z = GetZ(Player)
			if X > -20.27 and X < -10.27 then
				if Y < -60 then
					if Z > 150.07 and Z < 160.07 then
						local barrel = SpawnByLocationID(GetZone(Player), 33980)
						AddSpawnAccess(barrel, Player)
						SetTempVariable(barrel, "player", Player)
						RemoveItem(Player, 47881)
					else
						SendMessage(Player, "You cannot place the Ry'Gorr Explosive Mining Barrel here.", "yellow")
					end
				else
					SendMessage(Player, "You cannot place the Ry'Gorr Explosive Mining Barrel here.", "yellow")
				end
			else
				SendMessage(Player, "You cannot place the Ry'Gorr Explosive Mining Barrel here.", "yellow")
			end
		else 
			SendMessage(Player, "You cannot place the Ry'Gorr Explosive Mining Barrel here.", "yellow")
		end
	end
end