--[[
	Script Name	: SpawnScripts/TheBaubbleshire/LozoriaShinkicker.lua
	Script Purpose	: Lozoria Shinkicker 
	Script Author	: Dorbin
	Script Date	:     2022.01.08
	Script Notes	: Auto-Generated Conversation from PacketParser Data
	Notes           : Updated using dialog module & added callout.  2022.08.20 Dorbin
--]]
require "SpawnScripts/Generic/DialogModuleTest"

local PieThief = 5437
local OroRoots = 5438

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 4, "InRange", "LeaveRange")
	    ProvidesQuest(NPC, OroRoots)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
    if not HasQuest(Spawn, OroRoots) and not HasCompletedQuest(Spawn, OroRoots)then
	    FaceTarget(NPC, Spawn)
	    local choice = MakeRandomInt(1,3)
	    if choice == 1 then
	        PlayFlavor(NPC, "voiceover/english/lozoria_shinkicker/qey_village06/100_lozoria_shinkicker_lozoria_first_a433e906.mp3", "Ahh, there's nothing like a nice pint to tide you over till the next one! Greetings, traveler! Won't you join me for an ale?", "", 908545867, 693626511, Spawn)
	    elseif choice == 2 then
            PlayFlavor(NPC, "voiceover/english/lozoria_shinkicker/qey_village06/100_lozoria_shinkicker_multhail2_c18b6ff4.mp3", "Bring me another pint, Bregun!  Mine's almost empty!  What brings you into my papa's fine establishment, friend?", "", 1585254591, 550642986, Spawn)
	    elseif choice == 3 then
	        PlayFlavor(NPC, "voiceover/english/lozoria_shinkicker/qey_village06/100_lozoria_shinkicker_callout_7d9f1c7c.mp3", "Ahh ... nothing like a pint to tide you over till the next one. Greetings, traveler! Won't you join me for an ale?", "", 2310344859, 4256384860, Spawn)
        end
    end
end

function LeaveRange(NPC, Spawn)
end


function hailed(NPC, Spawn)
    Say(NPC,"Hailed")
    if GetFactionAmount(Spawn,11)<0 then
	    PlayFlavor(NPC, "", "", "heckno", 0, 0, Spawn)
    else 
	    FaceTarget(NPC, Spawn)
	    Dialog.New(NPC, Spawn)
	    Dialog.AddDialog("Bring me another pint, Bregun!  Mine's almost empty!  Well, hello there! What brings you into my Papa's fine establishment?")
	    Dialog.AddVoiceover("voiceover/english/lozoria_shinkicker/qey_village06/lozoriashinkicker000.mp3", 1408955306, 2441116246)
	    
	    Dialog.AddOption("I smell that pie!  You were the one that took it from Nyla's window!", "Guilty")
	    Dialog.AddOptionRequirement(REQ_QUEST_HAS_QUEST, PieThief)
	    Dialog.AddOptionRequirement(REQ_QUEST_ON_STEP, PieThief ,4)
	    
	    Dialog.AddOption("I'm actually looking for work.  Have any jobs that need doing?", "OroStart") 
	    Dialog.AddOptionRequirement(REQ_QUEST_DOESNT_HAVE_QUEST, OroRoots)
	    Dialog.AddOptionRequirement(REQ_QUEST_NOT_HAS_COMPLETED_QUEST, OroRoots)
	    
	    Dialog.AddOption("I've found your Oro roots. Here you go.", "FoundRoots")
	    Dialog.AddOptionRequirement(REQ_QUEST_ON_STEP, OroRoots , 2)
	    
	    Dialog.AddOption("I'm still gathering those roots for you.")
	    Dialog.AddOptionRequirement(REQ_QUEST_HAS_QUEST, OroRoots)
	    Dialog.AddOptionRequirement(REQ_QUEST_BEFORE_STEP, OroRoots, 2)
	    
	    Dialog.AddOption("Nothing right now. Enjoy your pint.")
	    
	    Dialog.Start()

    end
end


function OroStart(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh you are, are ya? Well I'll tell ya what - if ya do something for me, I'll get you a pint on the house and pay ya as well.")
	Dialog.AddVoiceover("voiceover/english/lozoria_shinkicker/qey_village06/lozoriashinkicker001.mp3", 297007289,1280253281)
--	PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
	Dialog.AddEmote("ponder")
	Dialog.AddOption("I could go for a pint. What do you need?", "TheJob")
	Dialog.Start()
end

function TheJob(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Bregun! Fetch this one a pint! Now, let me tell ya what I'd like ya to do. You know about the Oakmyst Forest. Everyone does. You see ever since we halflings were removed from the Vale, we've been unable to get ahold of any Jum Jum. Fortunately, the dryads make a halfway decent replacement.")
	Dialog.AddVoiceover("voiceover/english/lozoria_shinkicker/qey_village06/lozoriashinkicker002.mp3", 1470439081, 2268467194)
--	PlayFlavor(NPC, "", "", "chuckle", 0, 0, Spawn)
--	Dialog.AddEmote("chuckle")
	Dialog.AddOption("Get on with it. What's the job?", "TheJob2")
	Dialog.AddOption("That is quite a bit different!  So, do you need me to look into that?", "patience")
	Dialog.Start()
end

function TheJob2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Patience! Patience. We do things slowly around here. Don't confuse us halflings with the gnomes, Haha! Now, where was I?")
	Dialog.AddVoiceover("voiceover/english/lozoria_shinkicker/qey_village06/lozoriashinkicker003.mp3", 3414180428, 3979244034)
--	PlayFlavor(NPC, "", "", "no", 0, 0, Spawn)
--	Dialog.Emote("no")
	Dialog.AddOption("Alright, well, what do you need?", "patience")
	Dialog.Start()
end

function patience(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh, yes. The dryads in the forest with the Jum Jum replacement. My pop calls it a darn-poor substitution, but I think he's a wee bit bitter about the whole ordeal. At any rate, why don't you forage around and see if you can find any the Oro root they're growing. I could use some for the tavern's next batch.")
	Dialog.AddVoiceover("voiceover/english/lozoria_shinkicker/qey_village06/lozoriashinkicker004.mp3", 2659331601, 3561367931)
	PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
--	Dialog.Emote("nod")
	Dialog.AddOption("I'll go find your Oro roots. Save a drink for me!", "OfferQuest1")
	Dialog.Start()
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, OroRoots)
end

function Guilty(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Good knows! You caught me! But the pie is gone. I just couldn't resist! She'll have to come by later for an ale on the house.")
	Dialog.AddVoiceover("voiceover/english/lozoria_shinkicker/qey_village06/lozoriashinkicker006.mp3", 171584737, 1896068208)
	PlayFlavor(NPC, "", "", "wince", 0, 0, Spawn)
--	Dialog.Emote("wince")
	Dialog.AddOption("I'll have to let Nyla know. She may have a few words for you.", "UpdateThief")
	Dialog.Start()
end

function UpdateThief(NPC, Spawn)
    SetStepComplete(Spawn, PieThief, 4)
   end



function FoundRoots (NPC, Spawn)
	SetStepComplete(Spawn, OroRoots, 2)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Fine indeed! I'll get Bregun working on this next batch! Here, let me pay you. I did say I would, didn't I? Ah-hah! Thank goodness our pal is an adventurer! I can afford to run this tavern at a loss. Oh Bregun! Time for another pint!")
	Dialog.AddVoiceover("voiceover/english/lozoria_shinkicker/qey_village06/lozoriashinkicker005.mp3", 3396930954, 3615323112)
	PlayFlavor(NPC, "", "", "happy", 0, 0, Spawn)
--	Dialog.Emote("happy")
	Dialog.AddOption("Good luck on the next batch.")
	Dialog.Start()
end



