--[[
    Script Name    : SpawnScripts/Antonica/agratifiedmerchant.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.12 05:07:10
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 15, "InRange")

end

function InRange(NPC, Spawn)
RandomGreeting(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "", "Thank you for your help.  I need to leave soon, but I'd be willing to make some purchases to save you some time if you'd like.", "smile", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "That was very brave of you!  I need to leave soon, but I can offer my services in the meantime.", "applaude", 0, 0, Spawn, 0)
	end
end
function respawn(NPC)
	spawn(NPC)
end