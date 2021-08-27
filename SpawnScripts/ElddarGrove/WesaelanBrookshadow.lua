--[[
	Script Name	    : SpawnScripts/ElddarGrove/WesaelanBrookshadow.lua
	Script Purpose	: Wesaelan Brookshadow 
	Script Author	: John Adams
	Script Date	    : 2008.09.28
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
    AddTimer(NPC, 1000, "EmoteLoop")    
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional4/wesaelan_brookshadow/brookshadow_01.mp3", "", "", 2834600234, 1504715618, Spawn)
	AddConversationOption(conversation, "Thank you, and good day to you.", "dlg_13_1")
	StartConversation(conversation, NPC, Spawn, "Hail traveler!  All friends of the Elddar are welcome.")
	
	if convo==14 then
		PlayFlavor(NPC, "voiceover/english/optional4/wesaelan_brookshadow/brookshadow_01.mp3", "", "", 2834600234, 1504715618, Spawn)
		AddConversationOption(conversation, "Thank you, and good day to you.", "dlg_14_1")
		StartConversation(conversation, NPC, Spawn, "Hail traveler!  All friends of the Elddar are welcome.")
	end

	if convo==15 then
		PlayFlavor(NPC, "voiceover/english/optional4/wesaelan_brookshadow/brookshadow_01.mp3", "", "", 2834600234, 1504715618, Spawn)
		AddConversationOption(conversation, "Thank you, and good day to you.", "dlg_15_1")
		StartConversation(conversation, NPC, Spawn, "Hail traveler!  All friends of the Elddar are welcome.")
	end
end

function EmoteLoop(NPC)
    local emoteChoice = MakeRandomInt(1,3)

    if emoteChoice == 1 then
-- ponder
        PlayAnimation(NPC, 12030)
        AddTimer(NPC, MakeRandomInt(15000,18000), "EmoteLoop")	
    elseif emoteChoice == 2 then
-- sniff
        PlayAnimation(NPC, 12329)
        AddTimer(NPC, MakeRandomInt(6000,9000), "EmoteLoop")	
    else
-- tapfoot
        PlayAnimation(NPC, 13056)
        AddTimer(NPC, MakeRandomInt(15000,18000), "EmoteLoop")	
    end
end
