--[[
	Script Name	: SpawnScripts/SouthQeynos/Maile.lua
	Script Purpose	: Maile <Broker>
	Script Author	: Cynnar
	Script Date	: 2020.04.12
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

	local choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/broker_profallia/fprt_west/032_con_merchant_profallia_human_2_aoi_2ca03ff3.mp3", "Greetings, citizen. Is there something in particular you're looking for?", "bow", 404333104, 1493988687, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/broker_profallia/fprt_west/032_con_merchant_profallia_human_2_aoi_738a4908.mp3", "Please just let me know if there's something you'd like to buy.", "bye", 4289054749, 2138925586, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/broker_profallia/fprt_west/032_con_merchant_profallia_human_2_hail_4e4e214b.mp3", "Oh, hello! I'm sorry, was I helping you with something?", "confused", 2233786466, 627959368, Spawn)
	else
	end

end

