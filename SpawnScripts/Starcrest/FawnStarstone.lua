--[[
	Script Name	: SpawnScripts/Starcrest/FawnStarstone.lua
	Script Purpose	: Fawn Starstone 
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Recreated dialog / movement loop - 07.04.2022
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
ProvidesQuest(NPC,241)
waypoints(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
if GetFactionAmount(Spawn,11)<0 then
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
else
   Dialog2(NPC, Spawn)
end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Wonderful! Thank you so much.")
	Dialog.AddOption("I'll be back.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
	Dialog.AddDialog("Welcome to the village!  I hope you find everything you need.  I wish I had!")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_3_1051.mp3", 0, 0)
    if not HasQuest(Spawn,241) and not HasCompletedQuest(Spawn,241) and GetLevel(Spawn) >= 8 then
	Dialog.AddOption("What do you mean, you wish you had?", "Dialog4")
    end
    if GetQuestStep(Spawn,241)==4 then
	Dialog.AddOption("I've managed to gather all the components you needed to start your garden.","Turnin")
    end        
	Dialog.AddOption("Thanks for the welcome!  See you around!")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
	Dialog.AddDialog("Oh I suppose I'll need some seeds too. And I don't just need soil, I need things to enrich the soil I already have. I'd like to get some diatomaceous sand from the crabs of Antonica. I believe fish eggs would help with that too, so I'd like some of those as well. As for seeds, I'm sure you can collect some stuck to the fur of some of the mammals that wander around Antonica. If you could bring me all of these items it would help me greatly!")
	Dialog.AddOption("I can get them.", "QuestOffer")
	Dialog.Start()
end

function QuestOffer(NPC, Spawn)
    OfferQuest(NPC, Spawn, 241)
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "", "", "sigh", 0, 0, Spawn)
	Dialog.AddDialog("Well ... I hate to complain, but I thought the village would have more trees. Yes, I know ... I could move elsewhere, but I've come to love my new home.  Hmm... I wonder... would you help me bring a little more greenery to the area?")
	Dialog.AddOption("What do you have in mind?", "Dialog5")
	Dialog.AddOption("I'm sorry, I haven't time right now.")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddDialog("It would be nice to have more trees, but that's not practical. I'm building a garden behind my house, so I can look at it and imagine the whole village is verdant. The first thing I need is soil.")
	Dialog.AddOption("Where can I find some?", "Dialog3")
	Dialog.Start()
end

function Turnin(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "", "", "thanks", 0, 0, Spawn)
    SetStepComplete(Spawn, 241,4)
	Dialog.AddDialog("[NOTE: Not Accurate] Marvelous! These are just what I needed.  Please, take one of these hunting tools as a token of my thanks.")
	Dialog.AddOption("[I will report on Discord to EmemJR that you need your final dialog.]")
	Dialog.Start()	
end	

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 790.03, -24.51, 319.99, 2, 15,"InitialPause")
	MovementLoopAddLocation(NPC, 787.37, -24.37, 319.13, 2, 0)
	MovementLoopAddLocation(NPC, 786.44, -24.37, 319.93, 2, 15,"InitialPause")
	MovementLoopAddLocation(NPC, 786.18, -24.39, 320.32, 2, 0)
	MovementLoopAddLocation(NPC, 786.67, -24.41, 320.92, 2, 15,"InitialPause")
	MovementLoopAddLocation(NPC, 789.61, -24.48, 319.66, 2, 15,"InitialPause")
	MovementLoopAddLocation(NPC, 788.61, -24.49, 321.21, 2, 0)
	MovementLoopAddLocation(NPC, 787.63, -24.45, 321.31, 2, 15,"InitialPause")
	MovementLoopAddLocation(NPC, 788.55, -24.43, 319.33, 2, 15,"InitialPause")
	MovementLoopAddLocation(NPC, 787.63, -24.45, 321.31, 2, 15,"InitialPause")
	MovementLoopAddLocation(NPC, 788.61, -24.49, 321.21, 2, 0)
	MovementLoopAddLocation(NPC, 789.61, -24.48, 319.66, 2, 15,"InitialPause")
	MovementLoopAddLocation(NPC, 786.67, -24.41, 320.92, 2, 15,"InitialPause")
	MovementLoopAddLocation(NPC, 786.18, -24.39, 320.32, 2, 0)
	MovementLoopAddLocation(NPC, 786.44, -24.37, 319.93, 2, 15,"InitialPause")
	MovementLoopAddLocation(NPC, 787.37, -24.37, 319.13, 2, 0)
	MovementLoopAddLocation(NPC, 790.03, -24.51, 319.99, 2, 15,"InitialPause")
end





function InitialPause(NPC)
    local GatherSpawn = GetSpawn(NPC, 2340032)	-- Get Paula Marx

    math.randomseed(os.time())
    local pause = math.random (1, 4)

            if pause == 1 then
                    AddTimer(NPC, 100, "stop_gathering")  
            else
                    AddTimer(NPC, 1000, "Gather")
            end 
end


function Gather(NPC)
    local GatherSpawn = GetSpawn(NPC, 2340032)	-- Get Paula Marx
    SpawnSet(NPC, "visual_state", "2809")	-- Start gathering
    AddTimer(NPC, 5000, "Collect")	        -- for 5 seconds, then stop
end

function Collect(NPC)
    local GatherSpawn = GetSpawn(NPC, 2340032)	-- Get Paula Marx
    SpawnSet(NPC, "visual_state", "2810")	-- Start gathering
    AddTimer(NPC, 2000, "stop_gathering")	-- for 5 seconds, then stop
end

function stop_gathering(NPC)
    local GatherSpawn = GetSpawn(NPC, 2340032)	-- get Paula Marx
    SpawnSet(NPC, "visual_state", "0") 	        -- Stop her from gathering
end