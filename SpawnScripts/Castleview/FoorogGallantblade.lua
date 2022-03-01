--[[
	Script Name	: SpawnScripts/Castleview/FoorogGallantblade.lua
	Script Purpose	: Foorog Gallantblade 
	Script Author	: Scatman
	Script Date	: 2009.10.03
	Script Notes	: 
--]]

dofile("SpawnScripts/Generic/GenericVoiceOvers.lua")

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	GenericHail(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/foorog_gallantblade/qey_village04/newbie_path_froglok/fooroggallantblade005.mp3", "", "", 4022799450, 3509477944, Spawn)
	AddConversationOption(conversation, "Enjoy the day!")
	StartConversation(conversation, NPC, Spawn, "Glory to Marr, and a hearty welcome to you, mighty traveler!")
end