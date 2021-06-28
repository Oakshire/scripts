--[[
	Script Name		:	FarmerHelver-Say.lua
	Script Purpose	:	Farmer Helver
	Script Author	:	Jabantiz
	Script Date		:	08/29/2019
	Script Notes	:	
--]]



function spawn(NPC)

end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	PlayFlavor(NPC, "", "These farms provide a lot of necessary food to Qeynos.  It's a lot of work, but it is rewarding.", "agree", 1689589577, 4560189,  Spawn)
end