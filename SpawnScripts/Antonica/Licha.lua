--[[
    Script Name    : SpawnScripts/Antonica/Licha.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.16 09:08:15
    Script Purpose : 
                   : 
--]]

local SparklyOrNothing = 5340 -- Sparkly or Nothing quest

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local choice = MakeRandomInt(1, 3)
	if choice == 1 then
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1007.mp3", "", "", 0, 0, Spawn)
	elseif choice == 2 then
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1007.mp3", "", "", 0, 0, Spawn)
	elseif choice == 3 then
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1007.mp3", "", "", 0, 0, Spawn)
	end
	if not HasQuest(Spawn, SparklyOrNothing) and not HasCompletedQuest(Spawn, SparklyOrNothing) then
     Option1(NPC, Spawn)
    elseif GetQuestStep(Spawn, SparklyOrNothing) == 1 or GetQuestStep(Spawn, SparklyOrNothing) == 2 then
    Quest_Progress(NPC, Spawn)
end
   end

function Option1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "What? Umm, okay.", "Option2")
	AddConversationOption(conversation, "See something you like?", "Option3")
	AddConversationOption(conversation, "I've had enough orders from you.")
	StartConversation(conversation, NPC, Spawn, "Turn around. Let me look you over.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "What is it you want me to do?", "Option4")
	AddConversationOption(conversation, "No.")
	StartConversation(conversation, NPC, Spawn, "I suppose you will have to do. There are things I need and surely no one expects me to dirty my flawless nails doing them. So, you will do them for me?")
end


function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I can assure you, miss, that I can kill anything I want to.", "Option4")
	AddConversationOption(conversation, "Adventurers do not have time for baths or spoiled children. Good day.")
	StartConversation(conversation, NPC, Spawn, "Hardly.... Tell me, what dirt pile did you crawl out of? Your armor, if you can call it that, is filthy. Really, you should wash more. And you call that a weapon? I would be surprised if you could kill a lowly mouse with that thing.")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Basilisks are dangerous.", "Option5")
	AddConversationOption(conversation, "Dear gods, I'm out of here.")
	StartConversation(conversation, NPC, Spawn, "Do you know what a girl loves? By the blank look on your face, I would say no. Anyways, I adore everything that shines and sparkles. In fact, basilisks have the most wonderful shiny scales. I wanted one as a pet, but father said no.")
end

function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "As you wish.", "offer")
	AddConversationOption(conversation, "Get them yourself. A good wallop might do you good.")
	StartConversation(conversation, NPC, Spawn, "Too dangerous for you, my strong, dirty adventurer? I think not! Bring me the shiniest scales you can find, and do it quickly.")
end

function Quest_Progress(NPC, Spawn)
PlayFlavor(NPC, "", "Aren't you done yet?", "", 0, 0, Spawn)
end

function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, SparklyOrNothing)
end

function respawn(NPC)
	spawn(NPC)
end