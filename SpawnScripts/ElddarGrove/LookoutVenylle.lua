--[[
	Script Name	: SpawnScripts/ElddarGrove/LookoutVenylle.lua
	Script Purpose	: Lookout Venylle 
	Script Author	: John Adams
	Script Date	: 2008.09.28
	Script Notes	: Quests,VOs added 5.3.2022 - Dorbin
--]]

function spawn(NPC)
    ProvidesQuest(NPC, 5515)
    ProvidesQuest(NPC, 5516)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
 if GetFactionAmount(Spawn,11) <0 then
    PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
    else
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/lookout_venylle/qey_elddar/lookoutvenylle000.mp3", "", "hello", 487024690, 2845985258, Spawn)
    if not HasQuest(Spawn,5515)	and not HasCompletedQuest (Spawn,5515) then
    AddConversationOption(conversation, "What unnatural dangers lurk in the dark?", "dlg_10_1")
    else
    AddConversationOption(conversation, "I need a reminder on how to get to Windstalker's grave.", "dlg_10_2")
    end        
    if not HasQuest(Spawn,5516)	and not HasCompletedQuest (Spawn,5516) and GetLevel(Spawn) >=9 then
	AddConversationOption(conversation, "Do any unnatural dangers threaten Qeynos?", "Dangers1")
    elseif GetQuestStep(Spawn,5516)==2 then
	AddConversationOption(conversation, "I was able to deal with some of the undead from Antonica as you mentioned.", "Dangers2")
    end
	AddConversationOption(conversation, "Don't let me keep you from your vigilance.  ")
	StartConversation(conversation, NPC, Spawn, "Well, greetings, friend. I'm sorry I've no time for chatting. We rangers must be ever watchful. Many dangers lurk in the dark. Some natural, some ... unnatural.")
end
end

function dlg_10_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/lookout_venylle/qey_elddar/lookoutvenylle001.mp3", "", "no", 3608144910, 1097856081, Spawn)
	AddConversationOption(conversation, "I've heard of the name Holly Windstalker.  I think I'd like to see the grave.", "dlg_10_2")
	AddConversationOption(conversation, "I tend to stay away from graves that may not be able to hold their dead. ")
	StartConversation(conversation, NPC, Spawn, "It is ill to speak of the dead, but knowing the dangers that prowl in the dark is for your own safety. Rumor has it, that Holly Windstalker once again walks the hills.  I won't guarantee this is true, but neither will I discount it. What I do know is a grave bearing her name sits on a hill overlooking the village.  You'll see for yourself; she was laid to rest years ago.")
end

function dlg_10_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/lookout_venylle/qey_elddar/lookoutvenylle002.mp3", "", "agree", 2384165847, 2428685999, Spawn)
	AddConversationOption(conversation, "Thank you.  I'll follow those directions.", "dlg_10_3")
	StartConversation(conversation, NPC, Spawn, "Ahh ... very well, you are a daring soul! To get to the grave, follow the aqueduct from Qeynos to Windstalker Village. The village is built around the waterwheel that keeps the aqueduct flowing.  The duct passes through rock so you may lose sight of it for a time.  Just continue around the mountain, and you'll see it on the other side.")
end

function dlg_10_3(NPC, Spawn)
if not HasQuest(Spawn,5515)	and not HasCompletedQuest (Spawn,5515) then
OfferQuest(NPC,Spawn, 5515)
FaceTarget(NPC, Spawn)
end
end

function Dangers1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/lookout_venylle/qey_elddar/lookoutvenylle003.mp3", "", "agree", 166316836, 1644056019, Spawn)
	AddConversationOption(conversation, "Alright.  I'll return once I've dealt with a dozen of these undead.", "DangerQuest")
	AddConversationOption(conversation, "I prefer to stay away from undead.  Sorry.")
	StartConversation(conversation, NPC, Spawn, "Too many unatural dangers thrive to name them in one sitting.  You'd learn more of the undead if you served Qeynos in a civic manner.  A mausoleum rests on a small island in Antonica near the north gates of Qeynos.  Venture to the crypt and confront it's protector's decaying filthy skeletons.  Put to rest a dozen of these unnatural guardians who walk the earth.")
end

function DangerQuest(NPC, Spawn)
OfferQuest(NPC,Spawn, 5516)
FaceTarget(NPC, Spawn)
end

function Dangers2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/lookout_venylle/qey_elddar/lookoutvenylle004.mp3", "", "thank", 1813659207, 4263570557, Spawn)
	AddConversationOption(conversation, "Thank you. I'll keep that in mind.", "DangerDone")
	StartConversation(conversation, NPC, Spawn, "Ahh, you've done well adventurer!  This is just one of the many valuable lessons you'll learn on your adventures.  Please, take this reward for serving Qeynos.")
end

function DangerDone(NPC, Spawn)
    SetStepComplete(Spawn,5516,3)
	FaceTarget(NPC, Spawn)
end
