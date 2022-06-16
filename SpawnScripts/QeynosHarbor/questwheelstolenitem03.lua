--[[
    Script Name    : SpawnScripts/QeynosHarbor/questwheelstolenitem03.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.14 06:06:07
    Script Purpose : 
                   : 
--]]

local OfSail = 5587

function spawn(NPC)
SetRequiredQuest(NPC, OfSail, 1)
end

function casted_on(NPC, Spawn, SpellName)
	if SpellName == 'Search Behind' then
    SendMessage(Spawn, "You find a map behind the wheel on the wall.")
   SetStepComplete(Spawn, OfSail, 1)
    end  
end