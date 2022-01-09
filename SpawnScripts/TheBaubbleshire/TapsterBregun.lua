--[[
	Script Name	: SpawnScripts/TheBaubbleshire/TapsterBregun.lua
	Script Purpose	: Tapster Bregun <Bartender>
	Script Author	: Dorbin
	Script Date	: 2022.01.09
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

	local choice = math.random(1,5)

	if choice == 1 then
		PlayFlavor(NPC, "", "Might I interest you in some meat and cheese to go with that tall glass of ale?", "shrug", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "The best part about this job is all the extra coin I get.", "wink", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/tapster_bregun/qey_village06/100_tapster_bregun_multhail2_ccbdd67e.mp3", "Welcome to the Deepmug Tavern!  I'm Bregun. Talk to me if you wanna lift a pint!  Now, what are ya drinkin'?", "", 2461588719, 573667497, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/tapster_bregun/qey_village06/100_tapster_bregun_bregun_first_1ee27a85.mp3", "Greetings, traveler. Is there something I can get ya today?", "hello", 3137139088, 2537693501, Spawn)
	elseif choice == 5 then
		PlayFlavor(NPC, "", "What can I get for ya?", "nod", 1689589577, 4560189, Spawn)
	else
	end

end

