--[[
	Script Name	: SpawnScripts/ElddarGrove/WarbleWildmane.lua
	Script Purpose	: Warble Wildmane 
	Script Author	: John Adams
	Script Date	: 2008.09.28
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local Tree = 5533

function spawn(NPC)
ProvidesQuest(NPC,Tree)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC,"voiceover/english/voice_emotes/greetings/greetings_3_1026.mp3","","listen",0,0,Spawn)
	AddConversationOption(conversation, "What?  I don't see anyone talking.", "Option1")
	AddConversationOption(conversation, "Sorry, I must go.", "Option2")
	StartConversation(conversation, NPC, Spawn, "Shh!  Old Treebark's talking!")
--	StartConversation(conversation, NPC, Spawn, "Hello.  Have you spoken to the Heartwood tree yet?")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC,"","","shrug",0,0,Spawn)
	AddConversationOption(conversation, "You talk to trees?", "Option3")
	StartConversation(conversation, NPC, Spawn, "Oh, sorry I forget most people can't talk to trees.  Treebark and I were discussing the merits of various soils.  I favor a rich Rivervale loam while tree bark here thinks New Antonican sod can't be beat.")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC,"","","sigh",0,0,Spawn)
    if GetLevel(Spawn)>=30 and not HasCompletedQuest(Spawn,Tree) and not HasQuest(Spawn, Tree) then
        AddConversationOption(conversation, "Sure, what do I need to do?", "Option4")
    end
    AddConversationOption(conversation, "Interesting.  Afraid I haven't got the time.")
	StartConversation(conversation, NPC, Spawn, "Yea, I spent most of my time with the Heartwood tree until the Heartwood matron forbade it.  It needs help and I can't even approach it.  Could you try?")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC,"","","agree",0,0,Spawn)
	AddConversationOption(conversation, "I can do this.", "Option5")
	StartConversation(conversation, NPC, Spawn, "Take this pendant and find the Heartwood tree.  It's located in the center of this grove.  Once there clasp the pendant in one hand and touch the tree with the other.")
end

function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    OfferQuest(NPC,Spawn,Tree)
	AddConversationOption(conversation, "You're welcome.")
	StartConversation(conversation, NPC, Spawn, "Thank you!")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Goodbye!")
end



