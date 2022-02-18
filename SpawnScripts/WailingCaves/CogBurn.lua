--[[
	Script Name		:	CogBurn.lua
	Script Purpose	:	Cog Burn
	Script Author	:	ParserGenerated (Replace this)
	Script Date		:	08/30/2019
	Script Notes	:	Auto-Generated from a chat log using SpawnScriptDesigner
--]]

require "SpawnScripts/Generic/DialogModule"

-- Quest ID's
local COMBUSTIBLE_GNOME = 478

function spawn(NPC)
	ProvidesQuest(NPC, COMBUSTIBLE_GNOME)
	SetPlayerProximityFunction(NPC, 8, "InRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
    if not HasCompletedQuest (Spawn, COMBUSTIBLE_GNOME) and not HasQuest (Spawn, COMBUSTIBLE_GNOME) and  math.random(1, 100) <= 75 then
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/cog_burn/wailingcaves/025_qst_cog_burn_callout_18c055d.mp3", "How fortunate for me!  More adventurers!  Whee!  Come now, come here.", "clap", 2867416761, 2931341984, Spawn)
    else
    if math.random(1, 100) <= 70 then
    PlayFlavor(NPC, "", "", "dance", 0, 0, Spawn)
    end
    end
end


function hailed(NPC, Spawn)
    if not HasCompletedQuest (Spawn, COMBUSTIBLE_GNOME) and not HasQuest (Spawn, COMBUSTIBLE_GNOME) then
    conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/cog_burn/wailingcaves/cog_burn/cog_burn001.mp3", "", "happy", 827552063, 2224145017, Spawn)
	AddConversationOption(conversation, "I have to smash them?", "dlg_2")
	AddConversationOption(conversation, "I'm not interested.")
	StartConversation(conversation, NPC, Spawn, "You're just in time!  Yes, yes, just in time to help me continue my research.  With the popping and smoke, poofing!  So, so very exciting!  All you have to do is fetch me the smashed remains of these undead orcs.")   

elseif HasQuest (Spawn, COMBUSTIBLE_GNOME) then
    conversation = CreateConversation()
        if GetQuestStep (Spawn, COMBUSTIBLE_GNOME) == 2 then
        AddConversationOption(conversation, "Here is what you asked for.", "Handin")
        end
    PlayFlavor(NPC, "voiceover/english/cog_burn/wailingcaves/cog_burn/cog_burn004.mp3", "", "", 2589655569, 670111190, Spawn)
	AddConversationOption(conversation, "I'm working on it.")
	StartConversation(conversation, NPC, Spawn, "What!?  No smoldering, popping boom!  I'm almost done!  I've 78% of component A; 12% of ingredient B; and all I need now is the last 15% of sample D!  Go, go, go get me my stuff!  ")

else
        conversation = CreateConversation()
    	PlayFlavor(NPC, "voiceover/english/cog_burn/wailingcaves/cog_burn/cog_burn007.mp3", "", "hello", 3716966545, 2483311705, Spawn)
    	AddConversationOption(conversation, "Sure, if you say so.")
		StartConversation(conversation, NPC, Spawn, "Hello again! Lovely day for a bit of doom, wouldn't you say?")
	end
end


function dlg_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/cog_burn/wailingcaves/cog_burn/cog_burn002.mp3", "", "", 2433324308, 3739464743, Spawn)
	AddConversationOption(conversation,"That sounds dreadful!", "OfferQuest1")
	AddConversationOption(conversation, "Good luck finding help.")
	StartConversation(conversation, NPC, Spawn, "Of course you have to smash them before they're any good to me.  Nothing worse than components trying to eliminate the tinker! We don't want that to happen again, I'm telling you.  I was not amused.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/cog_burn/wailingcaves/cog_burn/cog_burn003.mp3", "", "agree", 132546489, 2576044342, Spawn)
	AddConversationOption(conversation, "Ok.","OfferQuest2")
	StartConversation(conversation, NPC, Spawn, "Good, good!  I'm glad we agree. You fetch me what I need, and I'll see what I can do for you.  You can trust me ... can't you?  Oh, no matter.  ")
end


function OfferQuest2(NPC, Spawn)
	OfferQuest(NPC, Spawn, COMBUSTIBLE_GNOME)
	
	function Handin(NPC, Spawn)
	conversation = CreateConversation()
		PlayFlavor(NPC, "voiceover/english/cog_burn/wailingcaves/cog_burn/cog_burn005.mp3", "", "cheer", 3167264299, 329469726, Spawn)
		AddConversationOption(conversation, "Nothing for me?", "Handin2")
		StartConversation(conversation, NPC, Spawn, "Marvelous!  Just fine, most satisfactory, absolutely acceptable.  Hmm!  Not bad even ... What?  What is it?  What are you looking at!? ")
	end
	
function Handin2(NPC, Spawn)
	conversation = CreateConversation()
	    --WRONG MP3 Key
		PlayFlavor(NPC, "voiceover/english/cog_burn/wailingcaves/cog_burn/cog_burn006.mp3", "", "cheer", 2945497015, 2240466538, Spawn)
		AddConversationOption(conversation, "Thank you.", "Reward")
		StartConversation(conversation, NPC, Spawn, "I see. So it's that kind of relationship is it?  So be it!  Here, take it!  Go on, take it I didn't want it anyway.  Wait ... yes I did.  I need that piece.  Here, take this; it's much nicer anyway, really!")
	end
	
	function Reward(NPC, Spawn)
    	SetStepComplete(Spawn, COMBUSTIBLE_GNOME, 2)
    end
    
    
	--[[	Move the following conversation to the Accepted function of the quest script
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)

	Dialog.AddDialog("Good, good!  I'm glad we agree. You fetch me what I need, and I'll see what I can do for you.  You can trust me ... can't you?  Oh, no matter.  ")
	Dialog.AddOption("Ok.")

	Dialog.Start()
	--]]
end
