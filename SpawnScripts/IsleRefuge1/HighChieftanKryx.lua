--[[
    Script Name    : SpawnScripts/IsleRefuge1/HighChieftanKryx.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.04 01:09:30
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

function aggro(NPC)
    Say(NPC,"[NOTE] I should be immune to physical attacks!  You need a magic weapon.")
end