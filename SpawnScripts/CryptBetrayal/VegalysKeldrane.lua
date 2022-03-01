--[[
    Script Name    : SpawnScripts/CryptBetrayal/VegalysKeldrane.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.15 09:10:32
    Script Purpose : 
                   : 
--]]


local VegalysKeldranesBetrayal = 5371


function spawn(NPC)
ProvidesQuest(NPC, VegalysKeldranesBetrayal)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if not HasQuest(Spawn, VegalysKeldranesBetrayal) and not HasCompletedQuest(Spawn, VegalysKeldranesBetrayal) then
	local conversation = CreateConversation()    
	PlayFlavor(NPC, "voiceover/english/vegalys_keldrane/qey_catacomb03/keldrane_dialog000.mp3", "", "", 2902748222, 2287363127, Spawn)
	AddConversationOption(conversation, "Don't belong here? But...you're dead.", "Option1")
	AddConversationOption(conversation, "I do not meddle with the dead.")
	StartConversation(conversation, NPC, Spawn, "The air is filled with misery and despair.  I add my voice to those tortured and unable to rest, for I do not belong here.")
	elseif HasQuest(Spawn, VegalysKeldranesBetrayal) then
	local conversation = CreateConversation()       
	PlayFlavor(NPC, "voiceover/english/vegalys_keldrane/qey_catacomb03/keldrane_dialog006.mp3", "", "", 619626763, 3034717150, Spawn)
	if GetQuestStep(Spawn, VegalysKeldranesBetrayal) == 4 then
	AddConversationOption(conversation, "Yes, I have spoken with them.", "Option6")
	end
	AddConversationOption(conversation, "No, I have not spoken with them.", "Option5")
	StartConversation(conversation, NPC, Spawn, "You return... did you speak with Adun, Borthen and Vargon?")
	elseif HasCompletedQuest(Spawn, VegalysKeldranesBetrayal) then
	PlayFlavor(NPC, "", "", "hail", 0, 0, Spawn)
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

function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/vegalys_keldrane/qey_catacomb03/keldrane_dialog008.mp3", "", "", 171966234, 4214550407, Spawn)
	AddConversationOption(conversation, "Adun is angry that you sent his family out of the city to their deaths.", "Option7")
	AddConversationOption(conversation, "I have no time to unravel this.")
	StartConversation(conversation, NPC, Spawn, "Tell me what they said.")
end

function Option7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/vegalys_keldrane/qey_catacomb03/keldrane_dialog009.mp3", "", "", 2925967918, 334851667, Spawn)
	AddConversationOption(conversation, "Borthen mourns the loss of his betrothed, your daughter Verilys.", "Option8")
	AddConversationOption(conversation, "I have no time to unravel this.")
	StartConversation(conversation, NPC, Spawn, "Ah, so they perished?  I deeply regret that decision, but all choices that day were filled with peril.  If they stayed in the city and the Guard failed, they would have met no easier end.  I grieve for his loss.  What else did you learn?")
end


function Option8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/vegalys_keldrane/qey_catacomb03/keldrane_dialog010.mp3", "", "", 1769423545, 1065944833, Spawn)
	AddConversationOption(conversation, "I have no time to help you now.")
	AddConversationOption(conversation, "Vargon is filled with grief and madness - he said he remembers nothing.", "Option10")
	StartConversation(conversation, NPC, Spawn, "Verilys, Verilys - my beloved daughter!  How could I have let her stay?  And how could I see her go?  She must have perished with Adun's daughters, in whose company I sent her forth.  This fills me with unbearable pain!  My only daughter!  What of Vargon, to add to my sorrow?")
end

function Option9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/vegalys_keldrane/qey_catacomb03/keldrane_dialog011.mp3", "", "", 975350659, 3929544193, Spawn)
	AddConversationOption(conversation, "\"Keldrane means nothing to me.  All that is left is pain.\"", "Option10")
	AddConversationOption(conversation, "\"All one brings to the world of the dead are one's emotions and thoughts.\"", "Option10")
	AddConversationOption(conversation, "I have no time to help you.")
	StartConversation(conversation, NPC, Spawn, "He remembers nothing?  What did he say?")
end

function Option10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/vegalys_keldrane/qey_catacomb03/keldrane_dialog012.mp3", "", "", 3005512365, 2255906253, Spawn)
	AddConversationOption(conversation, "But why would he help the enemy?", "Option11")
	AddConversationOption(conversation, "Interesting idea. I must go now.")
	StartConversation(conversation, NPC, Spawn, "Alas, Vargon!  I see now through the veil of years what I did not know before.  Vargon lived for the Guard, even more than I did.  When I ordered some citizens to leave Qeynos, he alone opposed me.  Sending them away was tantamount to admitting failure, he said.  A sign of my weakness as a leader.")
end


function Option11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/vegalys_keldrane/qey_catacomb03/keldrane_dialog013.mp3", "", "", 702686093, 1152570251, Spawn)
	AddConversationOption(conversation, "What happens now?", "Option12")
	AddConversationOption(conversation, "I have no time for this.")
	StartConversation(conversation, NPC, Spawn, "I suspect he did not think that we could fail, even if the enemy knew our strategy in advance.  And we did not fail immediately, for the Guard is strong! He hoped to show me that I was wrong, but at a terrible cost.")
end

function Option14(NPC, Spawn)
    SetStepComplete(Spawn, VegalysKeldranesBetrayal, 4)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
     PlayFlavor(NPC, "voiceover/english/vegalys_keldrane/qey_catacomb03/keldrane_dialog014.mp3", "", "", 743552938, 1449187099, Spawn)
	AddConversationOption(conversation, "Be at peace.")
	StartConversation(conversation, NPC, Spawn, "I must consider all my options.  Thank you for bringing me this news.  My spirit may rest now, more than it has been able to in the past.")
end





function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, VegalysKeldranesBetrayal)
end



function respawn(NPC)
	spawn(NPC)
end