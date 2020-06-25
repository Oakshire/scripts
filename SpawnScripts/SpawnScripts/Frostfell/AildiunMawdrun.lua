--[[
	Script Name	: SpawnScripts/FrostfellWonderlandVillage/AildiunMawdrun.lua
	Script Purpose	: Aildiun Mawdrun <League of Freethinkers>
	Script Author	: Cynnar
	Script Date	: 2019.10.29
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	local choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", "", "", 0, 0, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "We have heard everything that happened within the keep's walls. Everything! We know about the dragon and we know about what you did. You might want to go clean up after yourself. We will not let anyone know of your deeds but remember this is only due to the help you were to us. We are now even!", "", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Thank you for the work you have done for us. We might have use of you at a later time. In the meantime we will be listening as the story unfolds within the keep. Your work has already partially paid off, we have found that the snow goblins in this area have some sort of interest in what is going on within the keep. I would keep an eye out for any goblins that might be looking for assistance.", "", 1689589577, 4560189, Spawn)
	else
	end

end
