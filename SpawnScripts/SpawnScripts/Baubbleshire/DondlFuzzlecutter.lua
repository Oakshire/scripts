--[[
	Script Name	: SpawnScripts/Baubbleshire/DondlFuzzlecutter.lua
	Script Purpose	: Dondl Fuzzlecutter <Provisioner>
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
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/dondl_fuzzlecutter/qey_village06/dondlfuzzlecutter000.mp3", "", "", 605011151, 3443405792, Spawn)
	AddConversationOption(conversation, "I am not a tinkerer. I don't know. ", "dlg_36_1")
	StartConversation(conversation, NPC, Spawn, "...The tract-o-fizzle attaches to the wizgiggler.  Or is it the other way around?  What do you think my friend?")
end