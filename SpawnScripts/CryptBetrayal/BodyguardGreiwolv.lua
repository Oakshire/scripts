--[[
    Script Name    : SpawnScripts/CryptBetrayal/BodyguardGreiwolv.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.19 09:10:38
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "Hey! Step back afore I throw you into the drink down there! Talk to Cryptkeeper Maglus if you be looking for work!", "point", 1689589577, 4560189, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end