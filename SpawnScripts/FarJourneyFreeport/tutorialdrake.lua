--[[
    Script Name    : SpawnScripts/FarJourneyFreeport/tutorialdrake.lua
    Script Author  : Cynnar
    Script Date    : 2019.05.18 11:05:52
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end


--DoF Version
function attack(NPC)
	SendStateCommand(NPC, 65) -- attack
	AddTimer(NPC, 40000, "DoFdrake_rain")
end

function DoFdrake_rain(NPC)
	SendStateCommand(NPC, 910) --rain
	AddTimer(NPC, 10000, "DoFdrake_stop")
end


function DoFdrake_stop(NPC)
	SendStateCommand(NPC, 33678) --kill_rain
end


--non DoF Version
function NonDoFattack(NPC)
--	SendStateCommand(NPC, 10783) -- attack
    SpawnSet(NPC, "visual_state", 10783)
	AddTimer(NPC, 40000, "drake_rain")    
end

function drake_rain(NPC)
--	SendStateCommand(NPC, 12080) --rain
    SpawnSet(NPC, "visual_state", 12080)
    AddTimer(NPC, 10000, "drake_stop")
end

function drake_stop(NPC)
--	SendStateCommand(NPC, 44848) --kill_rain
    SpawnSet(NPC, "visual_state", 44848)
end
