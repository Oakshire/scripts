--[[
    Script Name    : SpawnScripts/Freeport/AlexandriaTalAzroth.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.02 07:07:29
    Script Purpose : 
                   : 
--]]

local TheFallenRetriever = 5274

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/qalantir/fprt_south/alexandria_tal_azroth000.mp3", "", "", 1050176753, 2267381562, Spawn)
	if GetQuestStep(Spawn, TheFallenRetriever) == 1 then
	AddConversationOption(conversation, "Who is your brother? ", "Option1")
	end
	AddConversationOption(conversation, "I'm sorry I do not know your brother.")
	StartConversation(conversation, NPC, Spawn, "Hello. It's nice to meet you, stranger. I've been waiting for news of my brother. I haven't heard from him in a very long time and I fear the worst.")
end


function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/qalantir/fprt_south/alexandria_tal_azroth001.mp3", "", "", 2213773274, 2594896031, Spawn)
	AddConversationOption(conversation, "Possibly, I found a letter in the sewers. ", "Option2")
	AddConversationOption(conversation, "Sorry, but I cant help you.")
	StartConversation(conversation, NPC, Spawn, "My little brother's name is Horatio; he's always been an adventure seeker, but I feel this time he may have gotten in over his head.  Do you have news of my brother?")
end


function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/qalantir/fprt_south/alexandria_tal_azroth002.mp3", "", "", 450301294, 3517461069, Spawn)
	AddConversationOption(conversation, "The letter has your name on it.", "Option3")
	AddConversationOption(conversation, "Nothing, I guess I made a mistake.")
	StartConversation(conversation, NPC, Spawn, "A letter? What makes you think it's from my brother or has anything to do with me?")
end


function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/qalantir/fprt_south/alexandria_tal_azroth003.mp3", "", "", 3241932776, 1351160403, Spawn)
	AddConversationOption(conversation, "Sure, here you go. ", "Option4")
	AddConversationOption(conversation, "Im afraid I cant do that.")
	StartConversation(conversation, NPC, Spawn, "My name? Hmm ... that is quite odd. I guess if my name is on the note, it could be my brother's. May I please see it?")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/qalantir/fprt_south/alexandria_tal_azroth004.mp3", "", "", 1192264052, 1762030072, Spawn)
	AddConversationOption(conversation, "Who would have written this?", "Option5")
	AddConversationOption(conversation, "I do not know what to tell you. ")
	StartConversation(conversation, NPC, Spawn, "Although his name is difficult to make out, this letter is indeed addressed to my brother. If I only knew what has become of him, it would put my mind at ease, no matter the news. ")
end

function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/qalantir/fprt_south/alexandria_tal_azroth005.mp3", "", "", 1557077522, 3890285599, Spawn)
	AddConversationOption(conversation, "Did he speak of anyone in the Academy?", "Option6")
		AddConversationOption(conversation, "That's interesting but I think I have helped you enough.")
	StartConversation(conversation, NPC, Spawn, "I know that he was doing some work for the Academy of Arcane Science. He always told me he wished to study as a magician. Perhaps he got into trouble trying to impress someone at the Academy.")
end


function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/qalantir/fprt_south/alexandria_tal_azroth006.mp3", "", "", 1298048316, 2588992169, Spawn)
	AddConversationOption(conversation, "Where can I find Qalantir?", "Option7")
	AddConversationOption(conversation, "It seems that this is getting a bit too dangerous for me. Good Luck.")
	StartConversation(conversation, NPC, Spawn, "I heard him mention his friend Qalantir who was a professor in the academy. Qalantir didn't seem like the best influence - every time Horatio talked about him it sounded like bad news.")
end

function Option7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/qalantir/fprt_south/alexandria_tal_azroth007.mp3", "", "", 743743960, 3277573198, Spawn)
	AddConversationOption(conversation, "I will seek out Qalantir.", "Option8")
		AddConversationOption(conversation, "Maybe you should go find him then, I'm quite busy.")
	StartConversation(conversation, NPC, Spawn, "Like I said, last I heard, Qalantir was a professor in the Academy, but that was months ago. He could have moved on, but I guess if you were to search for him, I'd check the Academy first.")
end


function Option8(NPC, Spawn)
    SetStepComplete(Spawn, TheFallenRetriever, 1)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/qalantir/fprt_south/alexandria_tal_azroth008.mp3", "", "", 3444449635, 316283748, Spawn)
	AddConversationOption(conversation, "I will do that, thank you for your help.")
	StartConversation(conversation, NPC, Spawn, "Thank you so much! I hope you find out something about Horatio's whereabouts. Please return with any information you can find!")
end





function respawn(NPC)
	spawn(NPC)
end