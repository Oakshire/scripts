--[[
    Script Name    : SpawnScripts/thunderdome/TalkTestOld.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.12 02:05:26
    Script Purpose : For demonstration of dialogues with quests using ORIGINAL setup.  Copied from Gubbo in Enchanted Lands.
                   : 
--]]


local LousyFairies = 117                            -- Designates the quest ID for reference later



function spawn(NPC)
	ProvidesQuest(NPC, LousyFairies)                -- NPC Shows Quest Feather for the ID'd quest.
	SetPlayerProximityFunction(NPC, 10, "InRange")  -- Setup for NPC Callout alerting player of something within 10 meters (in this case, a quest).  New function "InRange" created.
end



function respawn(NPC)
	spawn(NPC)                                      -- If NPC dies and respawns this will trigger the spawn function above.
end



function InRange(NPC, Spawn)                          -- Plays to player if they haven't finished or started the quest 
	if not HasCompletedQuest(Spawn, LousyFairies) and not HasQuest(Spawn, LousyFairies) then
	PlayFlavor(NPC, "voiceover/english/gubbo_chaley/enchanted/halflings/halfling_gubbo_chaley_callout_f7b85d2f.mp3", "Fritz!  They killed Fritz!  Those lousy fairies killed Fritz!", "", 2757692791, 3745928300, Spawn)
    end
end


function hailed(NPC, Spawn)                                 -- Primary Command for all normal dialogue
	if not HasCompletedQuest(Spawn, LousyFairies) and not HasQuest(Spawn,LousyFairies) then      --  if player has NOT completed nor has the quest - will direct to Dialog1 function
    Dialog1(NPC, Spawn)
    elseif HasQuest(Spawn,LousyFairies) then                -- if player has the quest - directs to Dialog3
    Dialog3(NPC, Spawn)
    else
    Dialog5(NPC, Spawn)                                     -- if player has finished the quest and does not have quest - will driect to Dialog5
    end
end




--Starting Quest----------------------------------------       First Hail.  ONLY displayed if player hasn't finished and doesn't have the quest

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)                                      -- Forces NPC to face Spawn (player)                  
	conversation = CreateConversation()                         -- Designates diologue is created when referenced
		PlayFlavor(NPC, "voiceover/english/gubbo_chaley/enchanted/gubbo_chaley/gubbo_chaley001.mp3", "", "scream", 1577103216, 3792943385, Spawn)         --Plays Voiceover, emotes, and directs who the Voiceover is to.
		AddConversationOption(conversation, "Sure.[STARTS QUEST]", "Dialog2")
		AddConversationOption(conversation, "I don't know Fritz.")
		StartConversation(conversation, NPC, Spawn, "Kill them!  I want you to kill those lousy, stinking, yellow fairies! You'll do this for me, right? You'll do this for Fritz! ")     --Required to start a dialogue
    if GetFactionAmount(Spawn,12) <0 then
        ChangeFaction(Spawn,12,5000)
    end

end


function Dialog2(NPC, Spawn)
	OfferQuest(NPC, Spawn, LousyFairies)            -- Offers Quest
end






--Finishing Quest--------------------------------------

function Dialog3(NPC, Spawn)
	conversation = CreateConversation()                         -- Designates diologue is created when referenced
 	PlayFlavor(NPC, "voiceover/english/gubbo_chaley/enchanted/gubbo_chaley/gubbo_chaley004.mp3", "", "", 2878548247, 952555633, Spawn)
        if GetQuestStep(Spawn, LousyFairies)==2 then            --  if player is on the 2nd step of quest - will display dialogue option.
	    AddConversationOption(conversation, "[STEP 2] Yes.", "Dialog4")
	    end
	AddConversationOption(conversation, "Working on it.")
	StartConversation(conversation, NPC, Spawn, "Uh ... so you killed them fairies, yeah?")
end


function Dialog4(NPC, Spawn)
	conversation = CreateConversation()                         -- Designates diologue is created when referenced
 	PlayFlavor(NPC, "voiceover/english/gubbo_chaley/enchanted/gubbo_chaley/gubbo_chaley005.mp3","","cringe", 2881662034, 1373874040, Spawn)
	AddConversationOption(conversation, "Right. [FINISHES QUEST]","QuestDone")
	StartConversation(conversation, NPC, Spawn, "I'm really sorry about that. Turns out, Fritz was just passed out under the docks.  Umm ... why don't you take this, and we'll just pretend we never had this little discussion.")
end


function QuestDone(NPC,Spawn)
	FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn, LousyFairies, 2)     -- Updates player's quest by completing step 2.
end 



--Post Quest-------------------------------------------


function Dialog5(NPC, Spawn)
	conversation = CreateConversation()                         -- Designates diologue is created when referenced
 	PlayFlavor(NPC, "voiceover/english/gubbo_chaley/enchanted/gubbo_chaley/gubbo_chaley006.mp3","","", 4082962413, 3474255449, Spawn)
	AddConversationOption(conversation, "Sure.")
	StartConversation(conversation, NPC, Spawn, "[POST QUEST] If you see Fritz, would you tell him I'm looking for him?")
end
