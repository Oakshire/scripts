--[[
    Script Name    : SpawnScripts/CryptBetrayal/Borthen.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.15 03:10:25
    Script Purpose : 
                   : 
--]]

local VegalysKeldranesBetrayal = 5371


function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetQuestStep(Spawn, VegalysKeldranesBetrayal) == 2 then
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/borthen/qey_catacomb03/borthen_dialog000.mp3", "", "", 1859725564, 2729819197, Spawn)
	AddConversationOption(conversation, "Too late?", "Option1")
	AddConversationOption(conversation, "I do not meddle with the dead.")
	StartConversation(conversation, NPC, Spawn, "Why do you disturb me, now that it's too late?")
	else
    PlayFlavor(NPC, "", "", "hail", 0, 0, Spawn)
end
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/borthen/qey_catacomb03/borthen_dialog001.mp3", "", "", 3582490002, 2484282879, Spawn)
	AddConversationOption(conversation, "I do not know what you mean.  I come on behalf of Vegalys Keldrane.", "Option2")
	AddConversationOption(conversation, "I have no time for this.")
	StartConversation(conversation, NPC, Spawn, "I'm haunted by thoughts of my betrothed.  Are you bringing me news of her at last?  Where has she gone that I cannot follow?  Did she find her way safely to another city?  Did she perish?  All I have left are questions.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/borthen/qey_catacomb03/borthen_dialog002.mp3", "", "", 3066175271, 1728924342, Spawn)
	AddConversationOption(conversation, "You were engaged to Keldrane's daughter?", "Option3")
	AddConversationOption(conversation, "I have no time for this.")
	StartConversation(conversation, NPC, Spawn, "Yes, her father sent you! I loved Verilys from the moment I saw her.  Where has she gone?  In this forsaken place, I feel many things, yet never have I felt Verilys - and for that, I am thankful.  A woman of her grace does not belong among these horrors.")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/borthen/qey_catacomb03/borthen_dialog003.mp3", "", "", 1730300145, 652598453, Spawn)
	AddConversationOption(conversation, "How did you feel to see your betrothed leave Qeynos?", "Option4")
	AddConversationOption(conversation, "I am not interested in your love story.")
	StartConversation(conversation, NPC, Spawn, "Vegalys Keldrane was my commanding officer.  He did me a great honor, allowing his daughter to return my affections.  We were to be married, but the War intervened.  Keldrane ordered the women who did not bear arms away from the city as the plague approached.  Verilys went with them.")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
     PlayFlavor(NPC, "voiceover/english/borthen/qey_catacomb03/borthen_dialog004.mp3", "", "", 3922266123, 3054575897, Spawn)
	AddConversationOption(conversation, "He asked me to speak to his friends.", "Option5")
	AddConversationOption(conversation, "I will leave now.")
	StartConversation(conversation, NPC, Spawn, "To see Verilys leave was to see my heart break.  Yet, I do not blame Keldrane for this.  He did what he felt was best for the city.  Always, the city was his first love and he died fighting for it.  Tell me, why did he send you to me?")
end

function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/borthen/qey_catacomb03/borthen_dialog005.mp3", "", "", 3376778356, 2145563241, Spawn)
	AddConversationOption(conversation, "Vargon told you that Keldrane died?", "Option6")
	AddConversationOption(conversation, "I've had enough of this for now.")
	StartConversation(conversation, NPC, Spawn, "I'm glad that to the end he thought of me as his friend.  Keldrane was more my friend, more than my beloved's father.  When Vargon told me Keldrane was dead, I could not believe it.  Keldrane, the invincible - dead?  Yet here I am, too.  Dead and unsung.")
end

function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/borthen/qey_catacomb03/borthen_dialog006.mp3", "", "", 2741512075, 2105464734, Spawn)
	AddConversationOption(conversation, "[continue]", "Option7")
	AddConversationOption(conversation, "I will leave now.")
	StartConversation(conversation, NPC, Spawn, "Yes, Vargon came to me, pulling our friend Adun behind him, screaming at me to drop my weapons and flee.  \"Keldrane is lost!\" he cried, \"And now we will all perish!\"  His warning was prophetic, but untimely.")
end

function Option7(NPC, Spawn)
    SetStepComplete(Spawn, VegalysKeldranesBetrayal, 2)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/borthen/qey_catacomb03/borthen_dialog007.mp3", "", "", 3460747949, 501696403, Spawn)
	AddConversationOption(conversation, "Thank you, you've been most helpful.  I bid you peace.")
	StartConversation(conversation, NPC, Spawn, "All time is eternity without Verilys, yet if Keldrane's spirit would be at peace, I know I would rest as well.  Fulfill whatever quest Keldrane has set you upon; even in death, I would follow his guidance.")
end







function respawn(NPC)
	spawn(NPC)
end