--[[
    Script Name    : SpawnScripts/SourceEvil/goodnecromancerpoison.lua
    Script Author  : Jabantiz
    Script Date    : 2016.09.09 11:09:58
    Script Purpose : Makes the poison cube not block everything
                   : 
--]]

function spawn(NPC)
	SpawnSet(NPC, "activity_state", "0")
end

function respawn(NPC)
	spawn(NPC)
end