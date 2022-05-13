--[[
    Script Name    : SpawnScripts/thunderdome/TalkTest.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.12 12:05:27
    Script Purpose : Testing Dialogue module for making conversations.  Dialogue Pulled from Gubbo in Enchanted Lands.
                   : 
--]]

require "SpawnScripts/Generic/DialogModule"     -- Required at the start of any dialogue using this setup

local LousyFairies = 117                        -- Designates the quest ID for reference later



function spawn(NPC)
ProvidesQuest(NPC, LousyFairies)                -- NPC Shows Quest Feather for the ID'd quest.
SetPlayerProximityFunction(NPC, 10, "InRange")  -- Setup for NPC Callout alerting player of something within 10 meters (in this case, a quest).  New function "InRange" created.
end




function respawn(NPC)
	spawn(NPC)                                  -- If NPC dies and respawns this will trigger the spawn function above.
end




function InRange(NPC, Spawn)                    -- Plays to player if they haven't finished or started the quest 
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
    Dialog5(NPC, Spawn)                                     -- if player has finished the quest and is not on 2nd step - will driect to Dialog5
    end
end







--Starting Quest----------------------------------------       First Hail.  ONLY displayed if player hasn't finished and doesn't have the quest

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)                                      -- Forces NPC to face Spawn (player)                  
	Dialog.New(NPC, Spawn)                                      -- Starts a new dialogue from NPC to player
	Dialog.AddDialog("Kill them!  I want you to kill those lousy, stinking, yellow fairies! You'll do this for me, right? You'll do this for Fritz! ")
	Dialog.AddVoiceover("voiceover/english/gubbo_chaley/enchanted/gubbo_chaley/gubbo_chaley001.mp3", 1577103216, 3792943385)
--	Dialog.Emote("scream")
	Dialog.AddOption("Sure.", "Dialog2")
	Dialog.AddOption("I don't know Fritz. ")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Right over there, along the coast ... those blasted, smug fairies!")
	Dialog.AddVoiceover("voiceover/english/gubbo_chaley/enchanted/gubbo_chaley/gubbo_chaley002.mp3", 1079858941, 3307355952)
	Dialog.AddOption("Alright.[STARTS QUEST]","QuestStart")
	Dialog.Start()
end

function QuestStart(NPC, Spawn)
	OfferQuest(NPC, Spawn, LousyFairies)
end






--Finishing Quest--------------------------------------

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Uh ... so you killed them fairies, yeah?")
	Dialog.AddVoiceover("voiceover/english/gubbo_chaley/enchanted/gubbo_chaley/gubbo_chaley004.mp3", 2878548247, 952555633)
        if GetQuestStep(Spawn, LousyFairies)==2 then 
        Dialog.AddOption("[STEP 2]Yes.", "Dialog4")             --  if player is on the 2nd step of quest - will direct to Dialog4 function and allow finishing the quest.
        end
    Dialog.AddOption("Working on it.")
    Dialog.Start()
end


function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I'm really sorry about that. Turns out, Fritz was just passed out under the docks.  Umm ... why don't you take this, and we'll just pretend we never had this little discussion. ")
	Dialog.AddVoiceover("voiceover/english/gubbo_chaley/enchanted/gubbo_chaley/gubbo_chaley005.mp3", 2881662034, 1373874040)
	Dialog.AddOption("Right.[FINISHES QUEST]","QuestDone")
	Dialog.Start()
end


function QuestDone(NPC,Spawn)
	FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn, LousyFairies, 2)
end 





--Post Quest-------------------------------------------

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("[POST QUEST] If you see Fritz, would you tell him I'm looking for him?")
	Dialog.AddVoiceover("voiceover/english/gubbo_chaley/enchanted/gubbo_chaley/gubbo_chaley006.mp3", 4082962413, 3474255449)
	Dialog.AddOption("Sure.")
	Dialog.Start()
end

   