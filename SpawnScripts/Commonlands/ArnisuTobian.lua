--[[
    Script Name    : SpawnScripts/Commonlands/ArnisuTobian.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.14 07:05:40
    Script Purpose : 
                   : 
--]]



TheBloodskullThreat = 413 -- Bloodskull Threat quest

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1022.mp3", "", 0, 0, Spawn)
	if GetQuestStep(Spawn, TheBloodskullThreat) == 4 then
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Tecera sent me.", "Option2")
	AddConversationOption(conversation, "What are you doing here?", "Option1")
	StartConversation(conversation, NPC, Spawn, "Go away!")
	else
	PlayFlavor(NPC, "", "Don't worry, it isn't what it looks like.", "", 0, 0, Spawn)
end
    end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Tecera sent me.", "Option2")
	StartConversation(conversation, NPC, Spawn, "Conveniently overhearing certain things. If I am complacent enough they do not treat me all that bad. They're convinced I'm a noble, that I may be worth something. The facade will fade eventually, but I will milk it while I can. You should leave before they think you've rescued me.")
end


function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	SetStepComplete(Spawn,  TheBloodskullThreat, 4)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "What are the orcs doing anyway?", "Option3")
	StartConversation(conversation, NPC, Spawn, "Ah, I see. Well, take this envelope then. It has what Tecera needs. Tell her I don't plan on staying much longer and I will see her soon.")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "In a way?", "Option4")
	StartConversation(conversation, NPC, Spawn, "They're experimenting with necromancy, in a way.")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Why would they do that?", "Option5")
	StartConversation(conversation, NPC, Spawn, "Well, I don't think they're just looking to reanimate corpses or control spirits. I think they're looking into actual resurrection, though they are going about it the wrong way.")
end

function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "All right.")
	StartConversation(conversation, NPC, Spawn, "I honestly don't know. Please, take this information to Tecera.")
end



function respawn(NPC)
	spawn(NPC)
end