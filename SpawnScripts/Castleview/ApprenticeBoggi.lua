--[[
	Script Name	: SpawnScripts/Castleview/ApprenticeBoggi.lua
	Script Purpose	: Apprentice Boggi 
	Script Author	: Scatman
	Script Date	: 2009.10.03
	Script Notes	: 
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

local Tool = 5457

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if GetFactionAmount(Spawn,11) <0 then
        FactionChecking(NPC, Spawn, faction)
        else     
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	if GetQuestStep(Spawn, Tool) ==1 then
	AddConversationOption(conversation, "I'm here regarding Froptub's new etching tool. Do you have it?", "ToolPickup")
    end
	PlayFlavor(NPC, "voiceover/english/apprentice_boggi/qey_village04/apprenticeboggi.mp3", "", "", 1068299089, 2686342617)
	AddConversationOption(conversation, "I think I'll let you get back to resting your \"injury.\" Good bye.")
	StartConversation(conversation, NPC, Spawn, "Oh! Hello! I wasn't... um... napping. I was just resting my injured leg. That's it!")
end
end

function ToolPickup(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/apprentice_boggi/qey_village04/apprenticeboggi000.mp3", "", "sit_idle", 2830477410, 146534045)
	AddConversationOption(conversation, "Sure, give it to me.","Update")
	AddConversationOption(conversation, "You must be joking. I'm not doing your work for you.")
	StartConversation(conversation, NPC, Spawn, "Oh! Yes, the etching tool. I have it right here. Could you deliever it for me? I don't think my leg could make it up the stairs to his smithy.")
end

function Update(NPC, Spawn)
    	SetStepComplete(Spawn, Tool, 1)
    end