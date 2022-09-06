--[[
    Script Name    : SpawnScripts/IsleRefuge1/GuardTugar.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.06 03:09:13
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/island_of_refuge/guard_tugar/ior_guardtugar_004.mp3", "Keep walking... While you still can!", "nod", 146673171, 1820291654, Spawn, 0)
end


function respawn(NPC)
	spawn(NPC)
end