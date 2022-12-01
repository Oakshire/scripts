--[[
    Script Name    : SpawnScripts/Antonica/SentryActon.lua
    Script Author  : Premierio015
    Script Date    : 2022.05.09 12:05:14
    Script Purpose : 
                   : 
--]]
local Quest2 = 5783

    local greetingsTable = { "voiceover/english/voice_emotes/greetings/greetings_1_1034.mp3",
    						 "voiceover/english/voice_emotes/greetings/greetings_2_1034.mp3",
    						 "voiceover/english/voice_emotes/greetings/greetings_3_1034.mp3"};

function spawn(NPC)

end

function hailed(NPC, Spawn)
    PlayFlavor(NPC, greetingsTable[math.random(#greetingsTable)], "", "", 0, 0, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    if HasQuest(Spawn,Quest2) and GetQuestStep(Spawn,Quest2)==3 then 
    AddConversationOption(conversation, "Counselor Vemerik has asked me to give you a message.","Dialog1")	
    end
	AddConversationOption(conversation, "Thanks for the advice!")
	StartConversation(conversation, NPC, Spawn, "Watch yourself out here. All kinds of bad things can happen - never know when a gnoll might sneak up behind ya and  ... GRAB ya!")
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC,"","","doubletake",0,0,Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "He says your sister is ill but she's being taken care of.","Dialog2")
	StartConversation(conversation, NPC, Spawn, "You mean Counselor Vemerik, as in the Queen's personal advisor Vemerik?  He has a message for me?  Uhhh ... what's the message?")
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC,"","","frustrated",0,0,Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Are you alright? Why was she in Freeport?","Dialog4")
	StartConversation(conversation, NPC, Spawn, "My sister? Taken care of... my sister?! She was suppose to be in Freeport already! This is... this is terrible!")
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC,"","","grumble",0,0,Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I'll just be on my way...","Dialog4")
	StartConversation(conversation, NPC, Spawn, "I knew we should have left sooner. I TOLD her we needed to get out of this wet-dog stinking hole sooner. That uppity silver-tongued elf-haired \'Counselor\' should watch his back if he knows what's good for him!")
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC,"","","point",0,0,Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I have no idea what you're talking about! I was just given a message your sister was sick!","Dialog5")
	StartConversation(conversation, NPC, Spawn, "I must rescue her!... You... You are in on this too, aren't you?! So where was she taken? Speak now or I'll remove your tongue!")
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC,"","","shakefist",0,0,Spawn)
    PlayFlavor(Spawn,"","","whome",0,0,Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I have no idea where she is. When did you last speak with her? Perhaps she said something?","Dialog6")
	StartConversation(conversation, NPC, Spawn, "What? That's ridiculous. That's a ridiculous story. I don't believe you. Just return my sister, I'll pay you whatever you want, there's no need for these shenanigans. ")
end
function Dialog6(NPC, Spawn)
    SetStepComplete(Spawn,Quest2,3)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC,"","","wince",0,0,Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "...Right. All preserve Queen Antonia.")
	StartConversation(conversation, NPC, Spawn, "Wait... my sister already wrote to me of her safe passage! I... uh... ignore what I said before... For the glory of Qeynos!")
end

--I do not think it is any of your business, my friend. If you truly wish to help find my sister, you will do as I say.
--I need to get my sister out of there. If you can't do it with words, could you do it by force?
--
-- No buts about it! I am not giving any information out about my sister until I know you can be trusted!
--Suspicious, me?  Uh... I was just testing you to see if you were truly interested. I am so worried about my sister but I do not want just some random person helping us find it... I mean, uh her... yes, her is what I meant.

function respawn(NPC)
	spawn(NPC)
end