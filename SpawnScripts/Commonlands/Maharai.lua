--[[
    Script Name    : SpawnScripts/Commonlands/Maharai.lua
    Script Author  : Premierio015
    Script Date    : 2021.03.15 06:03:18
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local choice = MakeRandomInt(1, 3)
	if choice == 1 then
	PlayFlavor(NPC, "", "Those rats across the river leave an awful stench wherever they go!", "", 0, 0, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Something really needs to be done about our rat problem.", "", 0, 0, Spawn)
	else
	 	PlayFlavor(NPC, "", "The gnawing, and the screeching, and the clawing... they're so NOISY.", 0, 0, Spawn)
end
   end
function respawn(NPC)
	spawn(NPC)
end

