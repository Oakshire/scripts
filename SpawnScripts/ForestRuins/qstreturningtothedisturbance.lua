--[[
    Script Name    : SpawnScripts/ForestRuins/qstreturningtothedisturbance.lua
    Script Author  : Shatou
    Script Date    : 2020.01.10 07:01:08
    Script Purpose : 
    Modified date  :5/28/2020
    Modified By    : EmemJR
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
local BUSH_MODEL_ID = 3908


function spawn(NPC)
	--SetRequiredQuest(NPC, 522,1)
end



function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)
    spawn(NPC)
end

function can_use_command(NPC, Spawn, Message)
	if Message == "Collect Leaf Sample" then
		if HasQuest(Spawn, NEWS_FOR_GERMAIN_QUEST_ID) then
			if GetQuestStep(Spawn, NEWS_FOR_GERMAIN_QUEST_ID) == 3 then
				return true
			end
		end
	elseif Message == "Sprinkle Nullification Powder" then
		--if HasQuest(Spawn, RETURNING_TO_THE_DISTURBANCE_QUEST_ID) then
			return true
		--end
	end
end

function casted_on(NPC, Spawn, Message)
    if Message == "Collect Leaf Sample" then
		if HasQuest(Spawn, NEWS_FOR_GERMAIN_QUEST_ID) then
			SetStepComplete(Spawn, NEWS_FOR_GERMAIN_QUEST_ID, 3)
		end
		
	elseif Message == "Sprinkle Nullification Powder" then
		if HasQuest(Spawn, RETURNING_TO_THE_DISTURBANCE_QUEST_ID) then
		    Say(Spawn, "SS- Sprinkled")
		    if GetQuestStep(Spawn, RETURNING_TO_THE_DISTURBANCE_QUEST_ID) == 1 then
		        Say(Spawn, "SS- sprinked with On step 1")
			    SetStepComplete(Spawn, RETURNING_TO_THE_DISTURBANCE_QUEST_ID, 1)
			    Set_Spawns_to_Parts(NPC, Spawn)
			else
			    Say(Spawn, "SS- sprinked with On step 2")
                Set_Spawns_to_Parts(NPC, Spawn)
            end
		end
    end
end
function Set_Spawns_to_Parts(NPC, Spawn)
    Say(Spawn, "SS- Set_Spawns_to_Parts called")
    local zone = GetZone(Spawn)
	local Parts_Bush = GetTempVariable(Spawn,"spawn1")
    local Shovel_Bush = GetTempVariable(Spawn,"spawn2")
    local Fire_Bush = GetTempVariable(Spawn,"spawn3")
    local Pickaxe_Bush = GetTempVariable(Spawn,"spawn4")
	local parts_bush = Parts_Bush
	local shovel_bush = Shovel_Bush
	local fire_bush = Fire_Bush
	local pickaxe_bush = Pickaxe_Bush
	local tent_tree = GetSpawnByLocationID(zone, TREE_TENT)
	local book_tree = GetSpawnByLocationID(zone, TREE_INVIS_BOOK)
	Say(Spawn, "SS- locals done")
	
	SetModelType(parts_bush, PARTS_MODEL_ID)
	--SpawnSet(parts_bush, "name","Parts step two")
	Say(Spawn, "SS- name set")
	SpawnSet(parts_bush, "show_command_icon", 0)
	SpawnSet(parts_bush, "display_hand_icon", 0)
	SpawnSet(parts_bush, "visual_state", "3752")
	Say(Spawn, "SS- parts set")
	
	SetModelType(shovel_bush, SHOVEL_MODEL_ID)
	SpawnSet(shovel_bush, "show_command_icon", 0)
	SpawnSet(shovel_bush, "display_hand_icon", 0)
	SpawnSet(shovel_bush, "visual_state", "3752")
	Say(Spawn, "SS- shovel set")
	
	SetModelType(fire_bush, FIRE_MODEL_ID)
	SpawnSet(fire_bush, "show_command_icon", 0)
	SpawnSet(fire_bush, "display_hand_icon", 0)
	SpawnSet(fire_bush, "visual_state", "3752")
	Say(Spawn, "SS- firebush set")
	
	SetModelType(pickaxe_bush, PICKAXE_MODEL_ID)
	SpawnSet(pickaxe_bush, "show_command_icon", 0)
	SpawnSet(pickaxe_bush, "display_hand_icon", 0)
	SpawnSet(pickaxe_bush, "visual_state", "3752")
	Say(Spawn, "SS- pickaxe set")
	
	SetModelType(tent_tree, GNOLL_TENT_MODEL_ID)
	SpawnSet(tent_tree, "show_command_icon", 0)
	SpawnSet(tent_tree, "display_hand_icon", 0)
			
	SetModelType(book_tree, BOOK_MODEL_ID)
	SpawnSet(book_tree, "visual_state", "3752")
	Say(Spawn, "SS- tree set")
	
	local BOOKSPAWN = SpawnMob(zone, 1960183, false, 1166.073, -21.8718, -741.387, 0)
	SetTempVariable(Spawn, "bookspawn", BOOKSPAWN)  
	
	AddTimer(parts_bush, 60000, "Set_Spawns_to_Bushes", 1, Spawn)
	--AddTimer(shovel_bush, 60000, "Set_Spawns_to_Bushes", 1, Spawn)
	--AddTimer(fire_bush, 60000, "Set_Spawns_to_Bushes", 1, Spawn)
	--AddTimer(pickaxe_bush, 60000, "Set_Spawns_to_Bushes", 1, Spawn)
end
function Set_Spawns_to_Bushes(NPC, Spawn)
    Say(Spawn, "SS- Set_Spawns_to_Bushes called")
    local Parts_Bush = GetTempVariable(Spawn,"spawn1")
    local Shovel_Bush = GetTempVariable(Spawn,"spawn2")
    local Fire_Bush = GetTempVariable(Spawn,"spawn3")
    local Pickaxe_Bush = GetTempVariable(Spawn,"spawn4")
	local parts_bush = Parts_Bush
	local shovel_bush = Shovel_Bush
	local fire_bush = Fire_Bush
	local pickaxe_bush = Pickaxe_Bush
	local tent_tree = GetSpawnByLocationID(zone, TREE_TENT)
	local book_tree = GetSpawnByLocationID(zone, TREE_INVIS_BOOK)
			
	SetModelType(parts_bush, BUSH_MODEL_ID)
	--SpawnSet(parts_bush, "name","bush step 2")
	SpawnSet(parts_bush, "show_command_icon", 1)
	SpawnSet(parts_bush, "display_hand_icon", 1)
	SpawnSet(parts_bush, "visual_state", "0")
			
	SetModelType(shovel_bush, BUSH_MODEL_ID)
	SpawnSet(shovel_bush, "show_command_icon", 1)
	SpawnSet(shovel_bush, "display_hand_icon", 1)
	SpawnSet(shovel_bush, "visual_state", "0")
		
	SetModelType(fire_bush, BUSH_MODEL_ID)
	SpawnSet(fire_bush, "show_command_icon", 1)
	SpawnSet(fire_bush, "display_hand_icon", 1)
	SpawnSet(fire_bush, "visual_state", "0")
			
	SetModelType(pickaxe_bush, BUSH_MODEL_ID)
	SpawnSet(pickaxe_bush, "show_command_icon", 1)
	SpawnSet(pickaxe_bush, "display_hand_icon", 1)
	SpawnSet(pickaxe_bush, "visual_state", "0")
	
	local BOOKSPAWN = GetTempVariable(Spawn,"bookspawn")
	Despawn(BOOKSPAWN)
end