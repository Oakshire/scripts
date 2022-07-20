--[[
    Script Name    : SpawnScripts/BigBend/thexmonument04broken.lua
    Script Author  : torsten
    Script Date    : 2022.07.20 06:07:41
    Script Purpose : 
                   : 
--]]

local TheStolenArtifactsofThex = 5683

function casted_on(NPC, Spawn, SpellName)
    if SpellName == 'inspect' then
	    SetStepComplete(Spawn, TheStolenArtifactsofThex, 1)
    end
end

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end