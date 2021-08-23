--[[
    Script Name    : SpawnScripts/Antonica/OracleEdnar.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.22 08:08:49
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local choice = MakeRandomInt(1, 3)
	if choice == 1 then
	PlayFlavor(NPC, "", "I sense that you still have much to do before your destiny is complete.", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
	PlayFlavor(NPC, "", "There is something different about you.", "", 1689589577,  4560189, Spawn)
	elseif choice == 3 then
	PlayFlavor(NPC, "",  "Your fate will shape the future of this world.", "", 1689589577,  4560189, Spawn)
	end
end

function respawn(NPC)
	spawn(NPC)
end