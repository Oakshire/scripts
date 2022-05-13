--[[
    Script Name    : SpawnScripts/thunderdome/TalkTestScriptMe.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.12 05:05:12
    Script Purpose : For testing dialogue scripts.  Breeeeak it!!
                   : 
--]]

function spawn(NPC)

end

function respawn(NPC)
	spawn(NPC)
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
 	PlayFlavor(NPC, "","Please don't hurt me!","cringe", 0, 0, Spawn)
end

