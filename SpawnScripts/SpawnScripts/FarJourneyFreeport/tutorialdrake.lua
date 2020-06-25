--[[
    Script Name    : SpawnScripts/FarJourneyFreeport/tutorialdrake.lua
    Script Author  : Cynnar
    Script Date    : 2019.05.18 11:05:52
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
SpawnSet(NPC, visual_state, 10783)
Say(NPC, "I should have changed my visual state")
end

function respawn(NPC)

end

function startanimation(NPC, Spawn)
	SpawnSet(NPC, "visual_state", "10783")
end

function stopanimation(NPC, Spawn)
	SpawnSet(NPC, "visual_state", "0")
end
