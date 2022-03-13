--[[
    Script Name    : SpawnScripts/Graystone/HaggardTalontear.lua
    Script Author  : Dorbin
    Script Date    : 2022.03.13 04:03:51
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")


function spawn(NPC)

end


function respawn(NPC)
	spawn(NPC)
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    GenericEcologyHail(NPC, Spawn, faction)
    end



function InRange(NPC, Spawn) 
    if math.random(1, 100) <= 20 then
	FaceTarget(NPC, Spawn)        
        GenericEcologyHail(NPC, Spawn, faction)
    end   
 end

