--[[
	Script Name		:	ItemScripts/BowlOfTerratrodderChuck.lua
	Script Purpose	:	Handles the item "Bowl of Terratrodder Chuck"
	Script Author	:	jakejp
	Script Date		:	6/10/2018
	Script Notes	:	
--]]

local TerratrodderChuck = 45400

local AMindOfMyOwn = 294

function used(Item, Player)
	if HasQuest(Player, AMindOfMyOwn) then
		if GetZoneID(GetZone(Player)) == 108 then

		    RemoveItem(Player, TerratrodderChuck)
			local bucket = SpawnMob(GetZone(Player), 1081002, 1, GetX(Player), GetY(Player), GetZ(Player), GetHeading(Player))
			AddSpawnAccess(bucket, Player)
			SetTempVariable(bucket, "PlayerPointer", Player)
		end
	end
end
