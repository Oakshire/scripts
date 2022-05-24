--[[
	Script Name		: SpawnScripts/QeynosHarbor/ErwinRohand.lua
	Script Purpose	: Erwin Rohand
	Script Author	: Dorbin
	Script Date		: 2022.05.24
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]
local Hides = 5563

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
    ProvidesQuest(NPC,Hides)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
 if GetFactionAmount(Spawn,11) <0 then
    choice = math.random(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "", "", "shakefist", 2088886924, 3736631596, Spawn)
	    elseif choice == 2 then
		PlayFlavor(NPC, "", "", "heckno", 1584866727, 581589457, Spawn)
        end
    else
        Dialog1(NPC, Spawn)
end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC,"voiceover/english/merchant_erwin_rohand/qey_harbor/erwinrohand000.mp3","","agree",1877055695,2851553270,Spawn)
    Dialog.AddDialog("She's still out there, I can feel it.  When I have enough money, I am heading out to sea to find my one true love. Won't you help me, friend? Just a small purchase?")
    if not HasQuest(Spawn,Hides) and not HasCompletedQuest(Spawn, Hides) then
	Dialog.AddOption("I am not really in the market for anything.  Is there any other way I can help?", "Dialog3")
    end  
    if GetQuestStep(Spawn,Hides)==2 then
	Dialog.AddOption("Here are five sleek hides, like you requested.","Delivered")
    end
	Dialog.AddOption("Maybe I will have a look at what you have for sale. ")
	Dialog.Start()
end


function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC,"voiceover/english/merchant_erwin_rohand/qey_harbor/erwinrohand001.mp3","","nod",67809503,3551257220,Spawn)
	Dialog.AddDialog("Sailors are always looking for ways to keep warm on the high seas. Wolf hides offer warmth and protection from the bone chilling waters. If you could bring me some sleek hides, the money I make selling them, will bring me closer to finding my love.")
	Dialog.AddOption("Then I'll be back with some sleek wolf hide in no time at all.", "Dialog4")
	Dialog.AddOption("I'm sorry, but I don't plan on hunting wolves anytime soon.")
	Dialog.Start()
end


function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	OfferQuest(NPC,Spawn,Hides)
	PlayFlavor(NPC,"","","thanks",0,0,Spawn)
	Dialog.AddDialog("Thank you!")
	Dialog.AddOption("You're welcome.")
	Dialog.Start()
end

function Delivered(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC,"voiceover/english/merchant_erwin_rohand/qey_harbor/erwinrohand002.mp3","","thanks",1144088499,3368325355,Spawn)
	Dialog.AddDialog("Your kindness is appreciated.  These wolf hides are premium wares and will fetch a handsome price!")
	Dialog.AddOption("Glad I could help. Hopefully they get you closer to your voyage.","FinishQuest")
	Dialog.Start()
end

function FinishQuest(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn,Hides, 2)
    end