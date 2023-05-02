--[[
    Script Name    : SpawnScripts/Blackburrow/InstructorGnarth.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.05.02 04:05:55
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end


