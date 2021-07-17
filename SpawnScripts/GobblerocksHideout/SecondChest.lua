--[[
    Script Name    : SpawnScripts/GobblerocksHideout/SecondChest.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.16 08:07:25
    Script Purpose : 
                   : 
--]]

local TheStolenSupplies =  5324

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 50, "SpawnAccess")
	AddSpawnAccess(NPC, NPC)
end


function SpawnAccess(NPC, Spawn)
if GetQuestStep(Spawn, TheStolenSupplie) == 4 then
AddSpawnAccess(NPC, Spawn)
else
RemoveSpawnAccess(NPC, Spawn)
end
   end


function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'collect the chest' then
		    if GetQuestStep(Spawn, TheStolenSupplies) == 4 then
           SetStepComplete(Spawn,  TheStolenSupplies, 4)
           end
		end
	end
