--[[
    Script Name    : SpawnScripts/CryptBetrayal/VegalysKeldrane.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.15 09:10:32
    Script Purpose : 
                   : 
--]]


local VegalysKeldranesBetrayal = 5371


function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	if not HasQuest(Spawn, VegalysKeldranesBetrayal) and not HasCompletedQuest(Spawn, VegalysKeldranesBetrayal) then
	PlayFlavor(NPC, "voiceover/english/vegalys_keldrane/qey_catacomb03/keldrane_dialog000.mp3", "", "", 2902748222, 2287363127, Spawn)
	AddConversationOption(conversation, "Don't belong here? But...you're dead.", "Option1")
	AddConversationOption(conversation, "I do not meddle with the dead.")
	StartConversation(conversation, NPC, Spawn, "The air is filled with misery and despair.  I add my voice to those tortured and unable to rest, for I do not belong here.")
	elseif HasQuest(Spawn, VegalysKeldranesBetrayal) then
	PlayFlavor(NPC, "voiceover/english/vegalys_keldrane/qey_catacomb03/keldrane_dialog006.mp3", "", "", 619626763, 3034717150, Spawn)
	 if GetQuestStep(Spawn, VegalysKeldranesBetrayal) == 4 then
	AddConversationOption(conversation, "Yes, I have spoken with them.", "Option6")
	end
	AddConversationOption(conversation, "No, I have not spoken with them.", "Option5")
	StartConversation(conversation, NPC, Spawn, "You return... did you speak with Adun, Borthen and Vargon?")
	end
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/vegalys_keldrane/qey_catacomb03/keldrane_dialog001.mp3", "", "", 1352431963, 1925638830, Spawn)
	AddConversationOption(conversation, "How did this happen?", "Option2")
		AddConversationOption(conversation, "Unfortunate, but I have no time to help you.")
	StartConversation(conversation, NPC, Spawn, "Dead, yes, and loyal till the end.  Unlike the one who betrayed me.  My forefathers fought for Qeynos, and for me to be surrounded by my enemies in life is everlasting torment.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/vegalys_keldrane/qey_catacomb03/keldrane_dialog002.mp3", "", "", 3654990677, 453529663, Spawn)
	AddConversationOption(conversation, "[Continue]", "Option3")
	AddConversationOption(conversation, "I have no time to help you.")
	StartConversation(conversation, NPC, Spawn, "My name is Vegalys Keldrane of the Qeynos' Guard.  During the War, I led my troops through the Catacombs to destroy those who bring plague to the city.  Surprise was our strongest weapon.")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/vegalys_keldrane/qey_catacomb03/keldrane_dialog003.mp3", "", "", 3113159879, 2570757493, Spawn)
	AddConversationOption(conversation, "I will help you.  What do you need?", "Option4")
		AddConversationOption(conversation, "I cannot help you.")
	StartConversation(conversation, NPC, Spawn, "Three lieutenants fought beside me; I loved them as brothers.  We divided our teams and set forth in secret, only to be destroyed.  Who else would have known my strategies? Who else would have known the moment to strike my team unawares?  I fear one of my friends betrayed me.")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/vegalys_keldrane/qey_catacomb03/keldrane_dialog004.mp3", "", "", 2361294081, 1728540665, Spawn)
	AddConversationOption(conversation, "Yes, I can help you.", "offer")
	AddConversationOption(conversation, "No, I cannot help you.")
	StartConversation(conversation, NPC, Spawn, "The spirits of my former lieutenants are also within these wretched catacombs.  Adun, Borthen and Vargon are their names.  I feel their presence in these catacombs, yet cannot sense which one tells the entire truth about that final day.  Can you find them and learn what they know?")
end


function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/vegalys_keldrane/qey_catacomb03/keldrane_dialog007.mp3", "", "", 2840695325, 1197443138, Spawn)
	AddConversationOption(conversation, "I will.")
	StartConversation(conversation, NPC, Spawn, "I cannot solve this riddle until you speak with each of them.  Please, return when you have done so.")
end





function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, VegalysKeldranesBetrayal)
end



function respawn(NPC)
	spawn(NPC)
end