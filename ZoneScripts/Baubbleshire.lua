--[[
	Script Name	: ZoneScipts/Baubbleshire.lua
	Script Purpose	: Baubbleshire
	Script Author	: Shatou
	Script Date	: 1/7/2020
	Script Notes	: 
]]--

local BAG_OF_PARTS_ID = 4110
local BAG_OF_PARTS_QUEST_ID = 505

function init_zone_script(Zone)
    SetLocationProximityFunction(Zone, 916.23, -17.66, -443.61, 10, "AddBagOfParts")
    SetLocationProximityFunction(Zone,869.07, -18.06, -485.02, 7, "CogOfAk","LeaveLocation")
end

function player_entry(Zone, Player)
      SendPopUpMessage(Player, "The Baubbleshire", 255, 255, 255)
end

function AddBagOfParts(NPC, Spawn)
    if not HasQuest(Spawn, BAG_OF_PARTS_QUEST_ID) and not HasCompletedQuest(Spawn, BAG_OF_PARTS_QUEST_ID) and not HasItem(Spawn, 4110) then
		SummonItem(Spawn, BAG_OF_PARTS_ID, 1)
	end
end

function CogOfAk(Zone,Player)
      SendPopUpMessage(Player, "Spectacular Sprocket of Ak’Anon", 255, 255, 0)
    end