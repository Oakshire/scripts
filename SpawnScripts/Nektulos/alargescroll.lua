--[[
    Script Name    : SpawnScripts/Nektulos/alargescroll.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.20 08:06:00
    Script Purpose : 
                   : 
--]]

local TrustMustBeEarnedPart1 = 5258

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange") 
end

function InRange(NPC, Spawn)
    if GetQuestStep(Spawn, TrustMustBeEarnedPart1) == 1 then
    AddPrimaryEntityCommand(Spawn, NPC, "Take the attack plans", 3, "Take the attack plans", "", 100)
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
end
end


function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'Take the attack plans' then
        SetStepComplete(Spawn, TrustMustBeEarnedPart1, 1)
        SetAccessToEntityCommand(Spawn,NPC,"Leave the supplies", 0)
                SpawnSet(NPC, "show_command_icon", 0)
               SpawnSet(NPC, "display_hand_icon", 0)
   end
 end



function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end