--[[
	Script Name	: SpawnScripts/GreaterFaydark/LarkMeadowswoon.lua
	Script Purpose	: Lark Meadowswoon 
	Script Author	: John Adams
	Script Date	: 2009.03.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo2/lark_meadowswoon/_exp03/exp03_rgn_greater_faydark/fae/flavor_lark_meadowswoon_hail_4110c2bb.mp3", "The Shroombas are majestic, aren't they?  They honor us by protecting this grove and the plants that grow here.", "", 1285635873, 695500372, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo2/lark_meadowswoon/_exp03/exp03_rgn_greater_faydark/fae/flavor_lark_meadowswoon_hail_9176e05b.mp3", "The seeds the Shroombas plant and protect are of great value to us!", "", 1853355142, 1854304162, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo2/lark_meadowswoon/_exp03/exp03_rgn_greater_faydark/fae/flavor_lark_meadowswoon_hail_ec97b992.mp3", "It's fascinating to watch the Shroombas work.  They help keep our forest green and alive!", "", 2987054098, 2174581919, Spawn)
	else
	end

end

