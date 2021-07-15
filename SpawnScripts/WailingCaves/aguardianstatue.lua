--[[
    Script Name    : SpawnScripts/WailingCaves/aguardianstatue.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.14 04:07:40
    Script Purpose : 
                   : 
--]]



function spawn(NPC)
	SetPlayerProximityFunction(NPC, 7, "InRange", Spawn)
end




function InRange(NPC, Spawn)
SendPopUpMessage(Spawn, "You hear a crackling sound from the nearby statue!", 255, 0, 0)
CastSpell(Spawn, 230170, 1, NPC)
end






function respawn(NPC)
	spawn(NPC)
end