--[[
    Script Name    : SpawnScripts/Generic/dancing_script.lua
    Script Author  : Cynnar
    Script Date    : 2018.06.02 11:06:55
    Script Purpose : because I am bored
                   : 
--]]

function spawn(NPC)
    MakeDance(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end

function MakeDance(NPC)
	PlayFlavor(NPC, "", "", "dance", 0, 0)
	AddTimer(NPC, 8500, "MakeDance")
end

