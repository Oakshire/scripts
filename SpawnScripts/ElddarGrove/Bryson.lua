--[[
	Script Name	: SpawnScripts/ElddarGrove/Bryson.lua
	Script Purpose	: Bryson 
	Script Author	: John Adams
	Script Date	: 2008.09.28
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/bryson/qey_elddar/100_archer_human_bryson_multhail1_591026b2.mp3", "Now, if you hope to be as fine an archer as me, you should be off practicing instead of talking to me!", "", 2519962645, 3532721498, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/bryson/qey_elddar/100_archer_human_bryson_callout1_c9e17e55.mp3", "Ha! A bullseye! I knew I would hit it soon. Take a look at this, friend!", "", 4180624223, 2622592, Spawn)
	else
	end

end

