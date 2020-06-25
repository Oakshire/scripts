--[[
	Script Name	: SpawnScripts/Baubbleshire/MirfGuinders.lua
	Script Purpose	: Mirf Guinders 
	Script Author	: Scatman
	Script Date	: 2009.09.27
	Script Notes	: 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local choice = math.random(1, 2)
	if choice == 1 then
		PlayFlavor(NPC, "", "Search within your soul! Reclaim your faith! Bristlebane lives within us. Do not abandon his mirth! We are not forsaken!", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/mirf_guinders/qey_village06/100_mirf_guinders_multhail1_59e52ebd.mp3", "Good adventurer, have faith and be well!  Perhaps one day you too may serve Bristlebane!", "", 300423478, 2139393363, Spawn)
	end
end