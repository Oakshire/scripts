--[[
    Script Name    : SpawnScripts/GobblerocksHideout/FirstChest.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.16 08:07:47
    Script Purpose : stolen chest script for quest "The Stolen Supplies"
                   : 
--]]

local TheStolenSupplies =  5324

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 50, "SpawnAccess")
	AddSpawnAccess(NPC, NPC)
end


function SpawnAccess(NPC, Spawn)
if GetQuestStep(Spawn, TheStolenSupplie) == 3 then
AddSpawnAccess(NPC, Spawn)
else
RemoveSpawnAccess(NPC, Spawn)
end
   end


function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'collect the chest' then
		    if GetQuestStep(Spawn, TheStolenSupplies) == 3 then
           SetStepComplete(Spawn,  TheStolenSupplies, 3)
           end
		end
	end





function respawn(NPC)
	spawn(NPC)
end