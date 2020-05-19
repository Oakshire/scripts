--[[
    Script Name    : SpawnScripts/QeynosHarbor/IanCathlan.lua
    Script Author  : Zcoretri
    Script Date    : 2017.06.02 05:06:14
    Script Purpose : 
                   : 
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I was just being friendly.  Good day to you.")
	AddConversationOption(conversation, "You wouldn't happen to know where I can get some good armor, would you?", "Option1")
	StartConversation(conversation, NPC, Spawn, "An' hail ta ye as well.  Can ol' Ian help ya with somethin', or are ya just bein' friendly?")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Maybe ... what do you want me to do?", "Option2")
	StartConversation(conversation, NPC, Spawn, "I might tell ya, if you help me out. In return, I'll give you some old armor that I can have refitted for you.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I can help you look.  Where should I start?", "Option3")
	StartConversation(conversation, NPC, Spawn, "My family has a history of losing things. I was hoping you could help me look for a few items; some are very sentimental.")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I'll return if I find anything.")
	StartConversation(conversation, NPC, Spawn, "I've a list of places where I may have misplaced a few things. Check the area to see if you can find anything. ")
end

