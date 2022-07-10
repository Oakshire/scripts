--[[
    Script Name    : SpawnScripts/QeynosHarbor/Shiningleaf.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.09 07:07:19
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)

end

function hailed(NPC, Spawn)
   if GetFactionAmount(Spawn,11) >0 then
       FaceTarget(NPC, Spawn)
	GenericGuardHail(NPC, Spawn)
end
end

function respawn(NPC)
	spawn(NPC)
end