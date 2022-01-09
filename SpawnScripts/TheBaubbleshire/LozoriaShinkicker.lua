--[[
	Script Name	: SpawnScripts/TheBaubbleshire/LozoriaShinkicker.lua
	Script Purpose	: Lozoria Shinkicker 
	Script Author	: Dorbin
	Script Date	: 2022.01.08
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
		PlayFlavor(NPC, "voiceover/english/lozoria_shinkicker/qey_village06/100_lozoria_shinkicker_lozoria_first_a433e906.mp3", "Ahh, there's nothing like a nice pint to tide you over till the next one!", "", 908545867, 693626511, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/lozoria_shinkicker/qey_village06/100_lozoria_shinkicker_multhail2_c18b6ff4.mp3", "Bring me another pint, Bregun!  Mine's almost empty!  What brings you into my papa's fine establishment, friend?", "", 1585254591, 550642986, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/lozoria_shinkicker/qey_village06/100_lozoria_shinkicker_callout_7d9f1c7c.mp3", "Ahh ... nothing like a pint to tide you over till the next one. Greetings, traveler! Won't you join me for an ale?", "", 2310344859, 4256384860, Spawn)

	end

end

