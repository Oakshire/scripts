--[[
	Script Name	: SpawnScripts/Baubbleshire/PeonaToughins.lua
	Script Purpose	: Peona Toughins <Tailor>
	Script Author	: Scatman
	Script Date	: 2009.09.27
	Script Notes	: Added dialog/HalfPint Quest - 2022.01.23 Dorbin
--]]
require "SpawnScripts/Generic/DialogModule"

dofile("SpawnScripts/Generic/GenericArmorsmithVoiceOvers.lua")
local HalfPint = 5448

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	if math.random(0, 100) <= 25 then
		FaceTarget(NPC, Spawn)
					local choice = math.random(1, 3)
					if choice == 1 then
						Say(NPC, "You can never be too careful when it comes to protecting yourself. Why not try something new?", Spawn)
					elseif choice == 2 then
						PlayFlavor(NPC, "", "Your garb looks a mite worn. Can I interest you in a fine new set of armor?", "", 1689589577, 4560189, Spawn)
					else
						PlayFlavor(NPC, "", "Hello there! Can I interest you in some of the finest merchandise this side of Norrath?", "wave", 1689589577, 4560189, Spawn)
					end
					end
end

function LeaveRange(NPC, Spawn)
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Dare I say, it's a fine day for shopping. How can I help you?")
	Dialog.AddVoiceover("voiceover/english/armorer_peona_toughins/qey_village06/quests/armorer_peona_toughins/armorer_peona_toughins001.mp3", 3593368605, 1432200573)
		if GetQuestStep(Spawn, HalfPint) ==7 then
	Dialog.AddOption("I'm here about Dibble.", "Dialog3")
        end
	Dialog.AddOption("Just taking a look at your wares.")
	Dialog.AddOption("Maybe some other time.")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You know Dibble? That little sneak buggered off with my research papers! Haven't seen him since.")
	Dialog.AddVoiceover("voiceover/english/armorsmith_peona_toughins/qey_village06/quests/armorer_peona_toughins/armorer_peona_toughins002.mp3", 3565724797, 2126898466)
	Dialog.AddOption("How long ago was that?", "Dialog6")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("He's been gone for nearly ten days.  You know, I kind of miss him fawning over me.")
	PlayFlavor(NPC, "", "", "sad", 0, 0, Spawn)
	Dialog.AddVoiceover("voiceover/english/armorer_peona_toughins/qey_village06/quests/armorer_peona_toughins/armorer_peona_toughins003.mp3", 3515475449, 2740606233)
	Dialog.AddOption("He asked me to give you all of this.", "Dialog1")
	Dialog.AddOption("[Lie] Well, he's dead.","Dead")
	Dialog.Start()
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("This is everything that was outlined in my research papers!  That impetuous imp! Anything to get on my good side ... How sweet.")
	PlayFlavor(NPC, "", "", "boggle", 0, 0, Spawn)
	Dialog.AddVoiceover("voiceover/english/armorer_peona_toughins/qey_village06/quests/armorer_peona_toughins/armorer_peona_toughins004.mp3", 22045046, 3777578970)
	Dialog.AddOption("The impetuous imp is languishing in Varsoon.", "Dialog2")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
    SetStepComplete(Spawn, HalfPint, 7)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("We must organize a rescue party.  I'll speak with Marshal Surefoot at once.  Oh, thank you for letting me know what happened to Dibble.  It's not much, but please take this for all you've done. ")
	PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddVoiceover("voiceover/english/armorer_peona_toughins/qey_village06/quests/armorer_peona_toughins/armorer_peona_toughins005.mp3", 3079387264, 1176091439)
	Dialog.AddOption("Thanks.")
	Dialog.Start()
end



function Dead(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "", "", "cry", 0, 0, Spawn)
	AddConversationOption(conversation, "... I mispoke. He is not dead, yet.","NotDead")
	StartConversation(conversation, NPC, Spawn, "WHAT?! ... How could... He can't be dead!")
end

function NotDead(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
	AddConversationOption(conversation, "He is held up in the Ruins of Varsoon.  Here is his stuff he wanted to give you.","Dialog1")
	StartConversation(conversation, NPC, Spawn, "Rude! How dare you play with my emotions! ... Dibble. Where is he? Is he safe?")
end




