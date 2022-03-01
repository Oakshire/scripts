--[[
    Script Name    : SpawnScripts/Freeport/DrundMordgraahlSkullsprain.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.15 06:07:33
    Script Purpose : 
                   : 
--]]

local TheLostReligionOfFallenGate = 5317
local QuestItemID = 5487 -- copied glyphs item

function spawn(NPC)
ProvidesQuest(NPC,  TheLostReligionOfFallenGate)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/optional1/mordgraahl_skullsprain/fprt_north/mordgraahl_skullsprain.mp3", "", "scold", 1415851457, 630090694, Spawn)
    if not HasQuest(Spawn, TheLostReligionOfFallenGate) and not HasCompletedQuest(Spawn, TheLostReligionOfFallenGate) then
    AddConversationOption(conversation, "I was hoping I could be of some use to the temple. ", "Option1")
    elseif GetQuestStep(Spawn, TheLostReligionOfFallenGate) == 2 and HasItem(Spawn, QuestItemID) then
    AddConversationOption(conversation, "I bring you images of the glyphs of the Gong of Uglan.", "Option11") 
    end
    AddConversationOption(conversation, "I didn't mean any offense.  I'll be going now.")
    StartConversation(conversation, NPC, Spawn, "Commoner! You dare to speak so freely to a Drund in this place of reverence?! You best have good reason for this intrusion.")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/optional1/mordgraahl_skullsprain/fprt_north/quests/mordgraahlskullsprain/mordgraahlskullsprain_x1_initial.mp3", "", "", 1140746236, 979548360, Spawn)
	AddConversationOption(conversation, "What sort of assistance do you need?", "Option2")
		AddConversationOption(conversation, "I cannot serve the Drund this day. ")
	StartConversation(conversation, NPC, Spawn, "Are you? It seems the winds of war have brought us together, as I need assistance.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/optional1/mordgraahl_skullsprain/fprt_north/quests/mordgraahlskullsprain/mordgraahlskullsprain_x1_initial2.mp3", "", "", 3104011062, 2485385696, Spawn)
	AddConversationOption(conversation, "What do you want me to look for?", "Option3")
		AddConversationOption(conversation, "I will not enter Fallen Gate. ")
	StartConversation(conversation, NPC, Spawn, "I've heard rumors of the discovery of Neriak's foreign quarter. Adventurers in the local tavern call it Fallen Gate.  I want you to go into this lost domain and look for something.")
end


function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/optional1/mordgraahl_skullsprain/fprt_north/quests/mordgraahlskullsprain/mordgraahlskullsprain_x1_initial3.mp3", "", "", 2490590703, 3276928304, Spawn)
	AddConversationOption(conversation, "The First Gate is now called the Fallen Gate? It doesn't sound too safe.", "Option4")
	AddConversationOption(conversation, "What was the social change?", "Option5")
	AddConversationOption(conversation, "I cannot aid you in your quest for the artifact.")
	StartConversation(conversation, NPC, Spawn, "I've read historical accounts of a great artifact given to an ogre warlord during the Age of Cataclysms. This artifact was created for this ogre during a time of social change within the First Gate of Neriak.")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/optional1/mordgraahl_skullsprain/fprt_north/quests/mordgraahlskullsprain/mordgraahlskullsprain_x1_initial5.mp3", "", "", 3929421173, 3114535005, Spawn)
    	AddConversationOption(conversation, "What else do you know about this Fallen Gate?", "Option5")
	AddConversationOption(conversation, "I don't think I can do this mission for the Drund.")
	StartConversation(conversation, NPC, Spawn, "The First Gate of Neriak is located deep beneath the surface world. A powerful arcane device was smuggled into the district where it unleashed a quake so massive that the caverns of the First Gate fell and sealed this place off from the living.")
end

function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/optional1/mordgraahl_skullsprain/fprt_north/quests/mordgraahlskullsprain/mordgraahlskullsprain_x1_initial4.mp3", "", "", 2177041203, 3449909881, Spawn)
	AddConversationOption(conversation, "Why are you interested in this lost religion?", "Option6")
	AddConversationOption(conversation, "Who is the lost god?", "Option7")
	StartConversation(conversation, NPC, Spawn, "Ancient records state that ogres and trolls of the First Gate worshipped a lost deity. This was not long before the city's disappearance. When the great First Gate perished, so too did the secrets of this lost religion and their deity.")
end

function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/optional1/mordgraahl_skullsprain/fprt_north/quests/mordgraahlskullsprain/mordgraahlskullsprain_x1_initial7.mp3", "", "", 2719750723, 2664538050, Spawn)
    	AddConversationOption(conversation, "Who is the lost god?", "Option7")
	AddConversationOption(conversation, "What if the records are wrong?", "Option8")
	AddConversationOption(conversation, "What does it matter? Almost everyone belives the gods to be dead anyway.")
	StartConversation(conversation, NPC, Spawn, "If this religion was followed by the dark elves or trolls alone, then I certainly wouldn't give spit about it.  But the records didn't say that dark elves and trolls worshipped this new deity; it said that ogres worshipped it.")
end

function Option7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
     -- need "DontKnow" animation here
     PlayFlavor(NPC, "voiceover/english/optional1/mordgraahl_skullsprain/fprt_north/quests/mordgraahlskullsprain/mordgraahlskullsprain_x1_initial6.mp3", "", "", 2552193369, 2565419806, Spawn)
	AddConversationOption(conversation, "Why are you interested in this lost religion?", "Option9")
	StartConversation(conversation, NPC, Spawn, "How can I know who the deity is if the religion died before it could leave Neriak?  The religion disappeared three centuries ago.")
end



function Option8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/optional1/mordgraahl_skullsprain/fprt_north/quests/mordgraahlskullsprain/mordgraahlskullsprain_x1_initial8.mp3", "", "doh", 618927212, 1141537925, Spawn)
    AddConversationOption(conversation, "What is the artifact you seek?", "Option10")
	AddConversationOption(conversation, "I have heard tales. Fallen Gate is certain death. Count me out!")
	StartConversation(conversation, NPC, Spawn, "Why do you think I'm not going down there myself?  Because I'm a coward?  I'm a scholar first and warrior second.  If I was certain of the religion's activity, then I would request the Drunds plan an expedition.")
end

function Option9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/optional1/drund_mordgraahl_skullsprain/fprt_north/quests/mordgraahlskullsprain/mordgraahlskullsprain_x1_initial9.mp3", "", "", 2803931381, 1089581073, Spawn)
    	AddConversationOption(conversation, "What if the records are wrong?", "Option8")
    		AddConversationOption(conversation, "Who is the lost god?", "Option7")
	StartConversation(conversation, NPC, Spawn, "The opinions of others do not concern me or my purpose.  All I care about is the history of my people and completing what sparse records we have of this piece of our past.")
end


function Option10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/optional1/mordgraahl_skullsprain/fprt_north/quests/mordgraahlskullsprain/mordgraahlskullsprain_x1_initial10.mp3", "", "", 951862517, 1442427286, Spawn)
	AddConversationOption(conversation, "I will help the Drunds, but how?", "offer")
	AddConversationOption(conversation, "This quest for lost religions and gods is a fool's quest. Good bye.")
	StartConversation(conversation, NPC, Spawn, "The artifact is a magical gong called the Gong of Uglan. It is said that dark elf blacksmiths crafted this artifact out of a magical alloy and rewarded it to the ogre warlord Uglan for a deed ... a mysterious deed.")
end


function Option11(NPC, Spawn)
SetStepComplete(Spawn, TheLostReligionOfFallenGate, 2)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/optional1/drund_mordgraahl_skullsprain/fprt_north/quests/mordgraahlskullsprain/mordgraahlskullsprain_x1_return.mp3", "", "", 3642193573, 351825200, Spawn)
	AddConversationOption(conversation, "I thank the Dismal Rage and the Drund sect for allowing me the honor to assist.")
	StartConversation(conversation, NPC, Spawn, "Excellent! The Drund thank you. This evidence shall convince the entire Dismal Rage to commit to an expedition. The union of our faiths shall aid us in our destiny and prepare us to exterminate the benevolent and weak faiths of this realm")
end

function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, TheLostReligionOfFallenGate)
end







function respawn(NPC)
spawn(NPC)
end

