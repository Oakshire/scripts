--[[
	Script Name	: SpawnScripts/TheBaubbleshire/TapsterBregun.lua
	Script Purpose	: Tapster Bregun <Bartender>
	Script Author	: Dorbin
	Script Date	: 2022.01.09
	Script Notes	: Auto-Generated Conversation from PacketParser Data
	Notes:              Updated Dialog Module - 2022.08.21 Dorbin
--]]
require "SpawnScripts/Generic/DialogModule"

local YolaPicnic = 5442

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 4, "InRange", "LeaveRange")
	ProvidesQuest(NPC, YolaPicnic)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
    if not HasCompletedQuest(Spawn, YolaPicnic) and not HasQuest(Spawn, YolaPicnic) then
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/tapster_bregun/qey_village06/100_tapster_bregun_multhail2_ccbdd67e.mp3", "Welcome to the Deepmug Tavern!  I'm Bregun. Talk to me if you wanna lift a pint!  Now, what are ya drinkin'?", "beckon", 2461588719, 573667497, Spawn)
    else
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/tapster_bregun/qey_village06/100_tapster_bregun_bregun_first_1ee27a85.mp3", "Greetings, traveler. Is there something I can get ya today?", "hello", 3137139088, 2537693501, Spawn)
    end
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
if GetFactionAmount(Spawn,11) <0 then
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
else    
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Welcome to the Deepmug Tavern!  I'm Bregun, and I'm the guy you'll be wanting to talk to if you feel the need to lift a pint!  What'll ya be havin'?")
	Dialog.AddVoiceover("voiceover/english/tapster_bregun/qey_village06/tapsterbregun000.mp3", 3026913164, 1235641856)
	PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
	
	Dialog.AddOption("Taverns are usually good places to find work.  I need work if you know of any.", "DoorDash")
	Dialog.AddOptionRequirement(REQ_QUEST_DOESNT_HAVE_QUEST, YolaPicnic)
	Dialog.AddOptionRequirement(REQ_QUEST_NOT_HAS_COMPLETED_QUEST, YolaPicnic)
	    
	Dialog.AddOption("I've delievered the picnic basket to Yola as requested.","DoorDashDone")
	Dialog.AddOptionRequirement(REQ_QUEST_ON_STEP, YolaPicnic , 2)


	Dialog.AddOption("I'm just here to enjoy the tavern.  Thanks!")
	Dialog.Start()
end
end

 function DoorDash(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Is that so?  Then why don't you do me a favor? Those look like some nimble feet ya got. You can deliver a basket of food for me.")
	Dialog.AddVoiceover("voiceover/english/tapster_bregun/qey_village06/tapsterbregun001.mp3",1259014993, 3905164382)
	PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
	Dialog.AddOption("Delievered where?", "DoorDashQuest")
	Dialog.AddOption("I was hoping for something more... exciting.  I'll pass.")
	Dialog.Start()
end   
 

function DoorDashQuest (NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, YolaPicnic)
end

 function DoorDashDone(NPC, Spawn)
    SetStepComplete(Spawn, YolaPicnic, 2)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hehe. So ya are!  I hope she enjoys her lunch. I gave her my best breads and cheeses!  Mmmm ... makes me hungry thinkin' about it! Haha! Oh, as promised, here's your coin!")
	Dialog.AddVoiceover("voiceover/english/tapster_bregun/qey_village06/tapsterbregun003.mp3",1121129450,2689540838)
	PlayFlavor(NPC, "", "", "thanks", 0, 0, Spawn)
	Dialog.AddOption("Thanks, Bregun")
	Dialog.Start()
end   



