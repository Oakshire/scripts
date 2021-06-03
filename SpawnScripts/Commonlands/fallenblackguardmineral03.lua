--[[
    Script Name    : SpawnScripts/Commonlands/fallenblackguardmineral03.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.02 07:06:09
    Script Purpose : 
                   : 
--]]

local AnErodedKey = 5251

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange")  
end

function InRange(NPC, Spawn)
    if GetQuestStep(Spawn, AnErodedKey) == 5 then
    AddPrimaryEntityCommand(Spawn, NPC, "collect magical ore", 2, "")
    elseif QuestStepIsComplete(Spawn, AnErodedKey) == 5 then
    RemovePrimaryEntityCommand(Spawn, NPC, "collect magical ore", 2)
end
   end



function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'collect magical ore' then
		  SetStepComplete(Spawn, AnErodedKey, 5)
end
  end

function respawn(NPC)
	spawn(NPC)
end