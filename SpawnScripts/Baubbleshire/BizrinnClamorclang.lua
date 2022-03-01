--[[
	Script Name	: SpawnScripts/Baubbleshire/BizrinnClamorclang.lua
	Script Purpose	: Bizrinn Clamorclang 
	Script Author	: Scatman
	Script Date	: 2009.09.27
	Script Notes	: 
--]]
local PickUp = 5454

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
if GetQuestStep(Spawn, PickUp) == 1 then
	AddConversationOption(conversation, "I actually have a recipt to pick up a device for Bupipa Guryup.","Device1")
	end
	PlayFlavor(NPC, "voiceover/english/bizrinn_clamorclang/qey_village06/bizrinnclamorclang.mp3", "", "", 3866517974, 2558850199, Spawn)
	AddConversationOption(conversation, "Ah, that's too bad.  I guess I'll get my thingamajig whatchamacalit made somewhere else")
	StartConversation(conversation, NPC, Spawn, "Oh! Why hello there!  I am so behind on tinker work that I am not taking anymore orders at the moment ... What is it you want?")
end

function Device1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/bizrinn_clamorclang/qey_village06/bizrinnclamorclang000.mp3", "", "agree", 3140666983, 3243864545, Spawn)
	AddConversationOption(conversation, "What does the device actually do?","umm")
	StartConversation(conversation, NPC, Spawn, "Oh! Yes! The froglok songstress! I have the Sonance Volume Amplificator ready for her!")
end

function umm(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/bizrinn_clamorclang/qey_village06/bizrinnclamorclang001.mp3", "", "happy", 1964116252, 2748280828, Spawn)
	AddConversationOption(conversation, "Wonderful!","ugh")
	AddConversationOption(conversation, "... I see. I'll take it to her.","ugh")
	StartConversation(conversation, NPC, Spawn, "Why it makes her singing even LOUDER! We'll be able to hear her singing in the Baubbleshire! Isn't that great?!")
end

function ugh(NPC, Spawn)
    SetStepComplete(Spawn, PickUp, 1)
   end


