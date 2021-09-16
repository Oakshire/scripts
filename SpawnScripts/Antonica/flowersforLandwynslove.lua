--[[
    Script Name    : SpawnScripts/Antonica/flowersforLandwynslove.lua
    Script Author  : Premierio015
    Script Date    : 2021.09.15 03:09:15
    Script Purpose : 
                   : 
--]]

local UnderAShadyTree = 5356

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", Spawn)
end


function InRange(NPC, Spawn)
 if GetQuestStep(Spawn, UnderAShadyTree) == 1 then
      SetAccessToEntityCommand(Spawn,NPC,"Pick some Flowers", 1)
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
elseif  not HasQuest(Spawn, UnderAShadyTree) or HasCompletedQuest(Spawn,  UnderAShadyTree)  then
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
         SetAccessToEntityCommand(Spawn,NPC,"Pick some Flowers", 0)
end
end




function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'Pick some Flowers' then
		    if GetQuestStep(Spawn, UnderAShadyTree) == 1 then
		        SetStepComplete(Spawn, UnderAShadyTree, 1)
        end
    end
end





function respawn(NPC)
	spawn(NPC)
end