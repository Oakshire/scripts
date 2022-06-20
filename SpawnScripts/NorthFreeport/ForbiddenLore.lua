--[[
    Script Name    : SpawnScripts/NorthFreeport/ForbiddenLore.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.19 01:06:58
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "", "Ha fool!  You are not ready for these teachings.  Just a mere glance upon these pages would burn the eyes from your sockets.  Return to me when you have purified your spirit and only then will you receive what you seek!", "", 0, 0, Spawn, 0)
end

function respawn(NPC)
	spawn(NPC)
end