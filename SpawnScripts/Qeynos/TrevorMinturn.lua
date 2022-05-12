--[[
	Script Name	: SpawnScripts/SouthQeynos/TrevorMinturn.lua
	Script Purpose	: Trevor Minturn <General Goods>
	Script Author	: Cynnar
	Script Date	: 2020.04.12
	Script Notes	: Quest dialogue added - 2022.5.11 - Dorbin
--]]
local delivery = 5534

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
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/merchant_trevor_minturn/qey_south/trevorminturn000.mp3", "", "hello", 2006919025, 2800091409, Spawn)
	if GetQuestStep(Spawn,delivery)==1 then
	AddConversationOption(conversation, "I'm here with a delivery for you from Fhara.","Delivered")
	end
	AddConversationOption(conversation, "I don't need anything, thank you. ", "dlg_0_1")
	StartConversation(conversation, NPC, Spawn, "May I interest you in some of my fine wares, friend?")

end


function Delivered(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/merchant_trevor_minturn/qey_south/trevorminturn001.mp3", "", "thanks", 1405726678, 1797539189, Spawn)
	AddConversationOption(conversation, "Glad I could help.","Delivered2")
	StartConversation(conversation, NPC, Spawn, "Thank you for your kindness.  You've gone out of your way to make this delivery!  I understand Fhara is quite busy as of late, but I've been expecting these papers for some time now!")
end   

function Delivered2(NPC, Spawn)
    SetStepComplete(Spawn,delivery,1)
	FaceTarget(NPC, Spawn)
end
