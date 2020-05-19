--[[
    Script Name    : SpawnScripts/ForestRuins/qstnewsforgermainleafsample.lua
    Script Author  : Shatou
    Script Date    : 2020.01.10 07:01:08
    Script Purpose : 
                   : 
--]]

local NEWS_FOR_GERMAIN_QUEST_ID = 520
local RETURNING_TO_THE_DISTURBANCE_QUEST_ID = 522
local BUSH_PARTS = 475035
local BUSH_SHOVEL = 1587510
local BUSH_FIRE = 1587511
local BUSH_PICKAXE = 1587512
local TREE_TENT = 475041
local TREE_INVIS_BOOK = 1587513
local GNOLL_TENT_MODEL_ID = 2467
local PARTS_MODEL_ID = 5211
local SHOVEL_MODEL_ID = 2212
local FIRE_MODEL_ID = 2019
local PICKAXE_MODEL_ID = 2821
local INVIS_MODEL_ID = 2306
local BOOK_MODEL_ID = 848

function spawn(NPC)
	SetRequiredQuest(NPC, NEWS_FOR_GERMAIN_QUEST_ID, 3)
end



function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end

function can_use_command(NPC, Spawn, Message)
	if Message == "Collect Leaf Sample" then
		if HasQuest(Spawn, NEWS_FOR_GERMAIN_QUEST_ID) then
			if GetQuestStep(Spawn, NEWS_FOR_GERMAIN_QUEST_ID) == 3 then
				return true
			end
		end
	
	end
end

function casted_on(NPC, Spawn, Message)
    if Message == "Collect Leaf Sample" then
		if HasQuest(Spawn, NEWS_FOR_GERMAIN_QUEST_ID) then
			SetStepComplete(Spawn, NEWS_FOR_GERMAIN_QUEST_ID, 3)
		end
		
	elseif Message == "Sprinkle Nullification Powder" then
		if HasQuest(Spawn, RETURNING_TO_THE_DISTURBANCE_QUEST_ID) then
			SetStepComplete(Spawn, RETURNING_TO_THE_DISTURBANCE_QUEST_ID, 1)

			local zone = GetZone(Spawn)
			local parts_bush = GetSpawnByLocationID(zone, BUSH_PARTS)
			local shovel_bush = GetSpawnByLocationID(zone, BUSH_SHOVEL)
			local fire_bush = GetSpawnByLocationID(zone, BUSH_FIRE)
			local pickaxe_bush = GetSpawnByLocationID(zone, BUSH_PICKAXE)
			local tent_tree = GetSpawnByLocationID(zone, TREE_TENT)
			local book_tree = GetSpawnByLocationID(zone, TREE_INVIS_BOOK)
			
			SetModelType(parts_bush, PARTS_MODEL_ID)
			SpawnSet(parts_bush, "show_command_icon", "false")
			SpawnSet(parts_bush, "display_hand_icon", "false")
			SpawnSet(parts_bush, "visual_state", "3752")
			
			SetModelType(shovel_bush, SHOVEL_MODEL_ID)
			SpawnSet(shovel_bush, "show_command_icon", "false")
			SpawnSet(shovel_bush, "display_hand_icon", "false")
			SpawnSet(shovel_bush, "visual_state", "3752")
			
			SetModelType(fire_bush, FIRE_MODEL_ID)
			SpawnSet(fire_bush, "show_command_icon", "false")
			SpawnSet(fire_bush, "display_hand_icon", "false")
			SpawnSet(fire_bush, "visual_state", "3752")
			
			SetModelType(pickaxe_bush, PICKAXE_MODEL_ID)
			SpawnSet(pickaxe_bush, "show_command_icon", "false")
			SpawnSet(pickaxe_bush, "display_hand_icon", "false")
			SpawnSet(pickaxe_bush, "visual_state", "3752")
			
			SetModelType(tent_tree, GNOLL_TENT_MODEL_ID)
			SpawnSet(tent_tree, "show_command_icon", "false")
			SpawnSet(tent_tree, "display_hand_icon", "false")
			
			SetModelType(book_tree, BOOK_MODEL_ID)
			SpawnSet(book_tree, "visual_state", "3752")
		end
    end
end