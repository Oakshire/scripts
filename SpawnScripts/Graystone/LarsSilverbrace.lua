--[[
	Script Name	: SpawnScripts/Graystone/LarsSilverbrace.lua
	Script Purpose	: Lars Silverbrace 
	Script Author	: John Adams/Scatman
	Script Date	: 2008.09.21
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)

end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	RandomTalk(NPC, Spawn, false)
end

function RandomTalk(NPC, Spawn, Option)
	local choice = 0
	if Option == nil then
		choice = math.random(1, 100)
	end
	
	if choice < 25 then
		FaceTarget(NPC, Spawn)
		local choice = math.random(1, 3)
		if choice == 1 then
			PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_ironforgeexchange/ft/eco/good/dwarf_eco_good_ironforgeexchange_hail_gm_a8e29d0d.mp3", "The Concordium are so consumed by their ancient tomes and dead languages that they fail to see the world right before their own noses.", "", 2358865205, 2338789833, Spawn)
		elseif choice == 2 then
			PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_ironforgeexchange/ft/eco/good/dwarf_eco_good_ironforgeexchange_hail_gm_dee3d0ad.mp3", "The Ironforge Exchange constructed, brewed, tailored, forged, baked, or scribed just about everything you see here in Qeynos.", "", 1495031871, 1491125980, Spawn)
		else
			PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_ironforgeexchange/ft/eco/good/dwarf_eco_good_ironforgeexchange_hail_gm_b69132af.mp3", "The Qeynos Guard recruits those who are attracted to physical activity but lack the creativity and talent required to join the Ironforge Exchange.", "", 3611623945, 4204627205, Spawn)
		end
	end
end
