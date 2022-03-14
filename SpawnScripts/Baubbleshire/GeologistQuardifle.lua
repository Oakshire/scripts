--[[
	Script Name	: SpawnScripts/Baubbleshire/GeologistQuardifle.lua
	Script Purpose	: Geologist Quardifle 
	Script Author	: Scatman
	Script Date	: 2009.09.27
	Script Notes	: Speaks Gnomish/Updated 1/6/2020 by Shatou
	Script Notes    : Re-attached Voiceovers. Created trigger for Gnomish Language Check. Applied level check.
--]]

dofile("SpawnScripts/Generic/UnknownLanguage.lua") --added 2022.03.13 Dorbin

local GATHERING_ROCK_SAMPLES_QUEST_ID = 504

function spawn(NPC)
	ProvidesQuest(NPC, GATHERING_ROCK_SAMPLES_QUEST_ID)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn) --Provides Language Based Callout with delay
    if not HasLanguage(Spawn, 6) then
            Garbled(NPC,Spawn)
--[[    local choice = math.random(1,2)
        if choice == 1 then
        PlayFlavor(NPC, "voiceover/english/gnome/ft/gnome/gnome_eco_garble_garbled_gm_cd85a24f.mp3", "hail hail the gnomes are here", "", 2230728991, 3389119515, Spawn, 6)
    	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/gnome/ft/gnome/gnome_eco_garble_garbled_gm_cd85a24f.mp3", "Words to not translate in language", "", 2230728991, 3389119515, Spawn, 6)
    	end]]--
	elseif
    not HasCompletedQuest (Spawn, GATHERING_ROCK_SAMPLES_QUEST_ID) and not HasQuest (Spawn, GATHERING_ROCK_SAMPLES_QUEST_ID) and HasLanguage(Spawn, 6) then 
    FaceTarget(NPC,Spawn)
     PlayFlavor(NPC, "", "Hmm. Very interesting. What are these doing here? You, traveler, come... come look at look at these peculiar rocks. ", "beckon", 0, 0, Spawn, 8)
     AddTimer(NPC, 2000, "PlayFlavor", Spawn)
    end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

   if not HasLanguage(Spawn, 6) then -- Hailed Language Check
	    Garbled(NPC,Spawn)
	    
--[[    local choice = math.random(1,2)
        if choice == 1 then
        PlayFlavor(NPC, "voiceover/english/gnome/ft/gnome/gnome_eco_garble_garbled_gm_cd85a24f.mp3", "garbled text not to be translated", "", 2230728991, 3389119515, Spawn, 6)
    	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/gnome/ft/gnome/gnome_eco_garble_garbled_gm_cd85a24f.mp3", "text to not translate language", "", 2230728991, 3389119515, Spawn, 6)
	end
	--]]
	
	else --Provides quest checks
	if HasQuest(Spawn, GATHERING_ROCK_SAMPLES_QUEST_ID) and GetQuestStep(Spawn, GATHERING_ROCK_SAMPLES_QUEST_ID) == 4 then
		AddConversationOption(conversation, "I'm back with those samples.", "dlg_1_1")
	
	elseif not HasQuest(Spawn, GATHERING_ROCK_SAMPLES_QUEST_ID) and GetLevel(Spawn) >=8 then
		AddConversationOption(conversation, "What's so fascinating about it? There are lots of strange phenomena in Antonica.", "dlg_0_1")

    end
        if not HasQuest(Spawn, GATHERING_ROCK_SAMPLES_QUEST_ID) and GetLevel(Spawn) < 8 then
        NotInteresting(NPC,Spawn)
        else
        PlayFlavor(NPC, "voiceover/english/geologist_quardifle/qey_village06/geologistquardifle000.mp3", "", "", 1675886861, 3931018482, Spawn)
	    AddConversationOption(conversation, "Have fun with your rocks, I'm not interested.")
	    StartConversation(conversation, NPC, Spawn, "These rocks here are interesting... I'm not sure where they came from.  It's rather strange... they simply don't fit this area at all...")
        end
    end
end

function NotInteresting(NPC,Spawn) -- Low level check
    PlayFlavor(NPC, "", "Sorry, friend. I don't think you'll find this discovery as intriguing as I. Please move along","no" ,0 ,0, Spawn, 6)
end

--[[ Gathering Rock Samples QUEST (504) ]]--
function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	

	AddConversationOption(conversation, "Hmm, you know, that's an interesting theory.", "dlg_0_2")
	AddConversationOption(conversation, "I'm not sure I buy that.")
	StartConversation(conversation, NPC, Spawn, "The geography of the area isn't suitable for forming this kind of rock. I'm merely curious I suppose, but understanding the world we live in often unseats presumptions we have about our existence.")
    PlayFlavor(NPC, "voiceover/english/geologist_quardifle/qey_village06/geologistquardifle001.mp3", "", "", 672549863, 278365007, Spawn)
end

function dlg_0_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/geologist_quardifle/qey_village06/geologistquardifle002.mp3", "", "ponder", 2616095419, 3348208994, Spawn)
	AddConversationOption(conversation, "Sure, that sounds good.", "dlg_0_3")
	AddConversationOption(conversation, "No, thanks.")
	StartConversation(conversation, NPC, Spawn, "I'll tell you what. If you want to learn more, and help me out at the same time, I can give you something to do that might whet your appetite for more - what do you say to that?")
end

function dlg_0_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	OfferQuest(NPC, Spawn, GATHERING_ROCK_SAMPLES_QUEST_ID)
end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	SetStepComplete(Spawn, GATHERING_ROCK_SAMPLES_QUEST_ID, 4)
	PlayFlavor(NPC, "voiceover/english/geologist_quardifle/qey_village06/geologistquardifle004.mp3", "", "thank", 4074675847, 2418120893, Spawn)
	AddConversationOption(conversation, "Thanks Quardifle!")
	StartConversation(conversation, NPC, Spawn, "Oooo, pass them here! These will occupy my time for quite a while! Really, you're a natural! If you find more unique rocks on your journey, return them to me and I'll reimburse you. Here, take this coin for your first discovery!")
end
--[[ QUEST END ]]--