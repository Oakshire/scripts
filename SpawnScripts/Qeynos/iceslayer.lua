--[[
	Script Name		:	iceslayer.lua
	Script Purpose	:	Waypoint Path for iceslayer.lua
	Script Author	:	Devn00b, premierio015
	Script Date		:	04/11/2020 07:24:41 PM
	Script Notes	:	Locations collected from Live.
	Modified by     :   premierio015
	Modified Date   :   26/09/2021 1:34 PM
	Modified Notes  :   fixed dialogues for quest "Barbaric Chores".
    Modified Datex2 :	Added Varsoon quest dialog and faction check. - Dorbin 2022.06.03
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

local BarbaricChores = 5363
local Varsoon = 5581

function spawn(NPC)
	waypoints(NPC)
	ProvidesQuest(NPC, BarbaricChores)
	ProvidesQuest(NPC, Varsoon)
end


function hailed(NPC, Spawn)
    if GetFactionAmount(Spawn,11) <0 then
        FactionChecking(NPC, Spawn, faction)
        else    
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	local choice = MakeRandomInt(1, 3)
	if choice == 1 then
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1001.mp3", "", "", 0, 0, Spawn)
	elseif choice == 2 then
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1001.mp3", "", "", 0, 0, Spawn)    
	elseif choice == 3 then
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1001.mp3", "", "", 0, 0, Spawn)   
	end
	AddConversationOption(conversation, "Why didn't he get any sleep last night?", "dlg_2_1")
	if not HasQuest(Spawn, BarbaricChores) and not HasCompletedQuest(Spawn, BarbaricChores) then
	AddConversationOption(conversation, "No bother... any chores I can help with?", "dlg_8_1")
	elseif GetQuestStep(Spawn, BarbaricChores) == 2 then
	AddConversationOption(conversation, "I have the venom sacs", "quest_finish")
	end
	AddConversationOption(conversation, "No problem.  I'll just leave him be.")
	StartConversation(conversation, NPC, Spawn, "Pay no attention to Warley down there he just probably didn't sleep last night and is a little grumpy. Isn't that right Warley?")
end
end

function dlg_2_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	if HasCompletedQuest(Spawn,Varsoon) then
	AddConversationOption(conversation, "I've actually been there.  The crypt has burst open!", "dlg_2_4")
    end
    AddConversationOption(conversation, "What is so scary about the Tomb of Varsoon?", "dlg_2_2")
	AddConversationOption(conversation, "Sounds like a place I don't want to go to myself.  ")
	StartConversation(conversation, NPC, Spawn, "Warley went to the Tomb of Varsoon to prove he wasn't afraid of walking around on those islands. Sure enough, he didn't get to the first bridge before turning tail and running back home. Poor thing ... all grumpy ... no sleep.")
end

function dlg_2_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	if not HasQuest(Spawn,Varsoon) and not HasCompletedQuest(Spawn,Varsoon) and GetLevel(Spawn)>=10 then
	AddConversationOption(conversation, "It sounds like a place I'd like to explore.", "dlg_2_3")
    end
	if HasCompletedQuest(Spawn,Varsoon) then
	AddConversationOption(conversation, "I've actually been there.  The crypt has burst open!", "dlg_2_4")
    end
    AddConversationOption(conversation, "I'll be sure to steer clear from it.  ")
	StartConversation(conversation, NPC, Spawn, "The tomb once held an evil mage - Varsoon the Undying. He was involved in the War of the Plagues centuries ago.  The Cataclysm must have weakened the mage's spells on that place, because he didn't stick around.  The Concordium says that Varsoon is long gone, but you wouldn't catch me dead there!")
end

function dlg_2_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    OfferQuest(NPC,Spawn, Varsoon)
end

function dlg_2_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC,"","","boggle",0,0,Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Let's hope the city is protected from such magic.")
	StartConversation(conversation, NPC, Spawn, "You don't say!  Well, I certainly will be steering clear now more than ever.  May the spirits protect us if this is a bad omen of things to come...")
end

function dlg_8_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Ready, willing and able!", "offer")
	StartConversation(conversation, NPC, Spawn, "Chores you ask? I planned on heading out to the caves to gather some spider venom sacs, but if you're willing and able, I'll let you handle this task. I'll need at least five of the sacs.")
end

function quest_finish(NPC, Spawn)
    SetStepComplete(Spawn, BarbaricChores, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
    AddConversationOption(conversation, "Thanks.")
    StartConversation(conversation, NPC, Spawn, "Excellent job, adventurer! Hand over the venom sacs, and I'll pad your purse with coin.")
end    	


function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, BarbaricChores)
end










function respawn(NPC)
		spawn(NPC)
	end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 541.45, -3.5, 136.91, 2, 0)
	MovementLoopAddLocation(NPC, 526.93, -3.5, 136.14, 2, 0)
	MovementLoopAddLocation(NPC, 510.52, -3.48, 134.38, 2, 0)
	MovementLoopAddLocation(NPC, 511.79, -3.48, 125.96, 2, 0)
	MovementLoopAddLocation(NPC, 527.66, -3.5, 128.38, 2, 0)
	MovementLoopAddLocation(NPC, 542.06, -3.5, 128.03, 2, 0)
	MovementLoopAddLocation(NPC, 542.42, -5.55, 121.07, 2, 0)
	MovementLoopAddLocation(NPC, 552.51, -5.55, 121.16, 2, 0)
	MovementLoopAddLocation(NPC, 552.24, -3.5, 127.63, 2, 0)
	MovementLoopAddLocation(NPC, 566.13, -3.5, 128.07, 2, 0)
	MovementLoopAddLocation(NPC, 582.44, -3.48, 125.97, 2, 0)
	MovementLoopAddLocation(NPC, 583.6, -3.48, 135.08, 2, 0)
	MovementLoopAddLocation(NPC, 567.53, -3.5, 136.55, 2, 0)
	MovementLoopAddLocation(NPC, 553.23, -3.5, 136.78, 2, 0)
	MovementLoopAddLocation(NPC, 567.53, -3.5, 136.55, 2, 0)
	MovementLoopAddLocation(NPC, 583.6, -3.48, 135.08, 2, 0)
	MovementLoopAddLocation(NPC, 582.44, -3.48, 125.97, 2, 0)
	MovementLoopAddLocation(NPC, 566.13, -3.5, 128.07, 2, 0)
	MovementLoopAddLocation(NPC, 552.24, -3.5, 127.63, 2, 0)
	MovementLoopAddLocation(NPC, 552.51, -5.55, 121.16, 2, 0)
	MovementLoopAddLocation(NPC, 542.42, -5.55, 121.07, 2, 0)
	MovementLoopAddLocation(NPC, 542.06, -3.5, 128.03, 2, 0)
	MovementLoopAddLocation(NPC, 527.66, -3.5, 128.38, 2, 0)
	MovementLoopAddLocation(NPC, 511.79, -3.48, 125.96, 2, 0)
	MovementLoopAddLocation(NPC, 510.52, -3.48, 134.38, 2, 0)
	MovementLoopAddLocation(NPC, 526.93, -3.5, 136.14, 2, 0)
	MovementLoopAddLocation(NPC, 541.45, -3.5, 136.91, 2, 0)
end


