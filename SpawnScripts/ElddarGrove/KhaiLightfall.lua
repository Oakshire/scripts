--[[
	Script Name	: SpawnScripts/ElddarGrove/KhaiLightfall.lua
	Script Purpose	: Khai Lightfall <Monk Trainer>
	Script Author	: John Adams
	Script Date	: 2008.09.28
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    if GetFactionAmount(Spawn,11) <0 then
		PlayFlavor(NPC, "", "You best remove yourself or I will be forced to.", "shakefist", 0, 0, Spawn)
     else  
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1036.mp3", "May yourr life be uneventful frriend.", "bow", 1689589577, 4560189, Spawn)

	end

end

