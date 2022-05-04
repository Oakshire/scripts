--[[
	Script Name		: SpawnScripts/SouthFreeport/SergeantNominus.lua
	Script Purpose	: Sergeant Nominus
	Script Author	: Dorbin
	Script Date		: 2022.05.04
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
Dialog8(NPC, Spawn)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well done.  Maybe this will grant me some peace for a time.  Take this coin as payment for services rendered.")
	Dialog.AddVoiceover("voiceover/english/optional1/sergeant_nominus/fprt_south/sergeantnominus005.mp3", 1774266460, 883209262)
	Dialog.AddOption("It was my pleasure.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hmmm ... perhaps you can help me.  I'm trying to track down a rogue who's preying upon the fisherman and clergy folk here in South Freeport.  His name is Pythus.")
	Dialog.AddVoiceover("voiceover/english/optional1/sergeant_nominus/fprt_south/sergeantnominus001.mp3", 2795734403, 953084830)
	Dialog.AddOption("You haven't been able to catch him?", "Dialog5")
	Dialog.AddOption("Nevermind.  I'm not interested.")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hail, citizen.  If you have something to report then speak up.  Otherwise, move along.")
	Dialog.AddVoiceover("voiceover/english/optional1/sergeant_nominus/fprt_south/sergeantnominus000.mp3", 2687891400, 2549215959)
	Dialog.AddOption("I'll just be moving along then.")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Good. I'll tell you what I know.  A friend of mine told me he saw Pythus lingering near the docks.  Go find Kaeso Polluvius, one of the caretakers. Tell him Nominus sent you.  He owes me a favor, so you should be able to learn something from him.")
	Dialog.AddVoiceover("voiceover/english/optional1/sergeant_nominus/fprt_south/sergeantnominus004.mp3", 1170045735, 1639080507)
	Dialog.AddOption("I'll be back when I have Pythus' cap.")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Several of my guards have been ordered to other parts of the city.  Since my requests for reinforcements have gone ignored, I don't have the men to track down the rogue. But at the same time, they tell me I have to find this Pythus or else.  I don't know how much longer I can put up with this!")
	Dialog.AddVoiceover("voiceover/english/optional1/sergeant_nominus/fprt_south/sergeantnominus002.mp3", 158742956, 3865329135)
	Dialog.AddOption("Where do I fit in?", "Dialog7")
	Dialog.AddOption("Nevermind.  I'm not interested.")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hail, citizen.  If you have something to report then speak up.  Otherwise, move along.")
	Dialog.AddVoiceover("voiceover/english/optional1/sergeant_nominus/fprt_south/sergeantnominus000.mp3", 2687891400, 2549215959)
	Dialog.AddOption("Pythus is no more.  Here's his cap.", "Dialog1")
	Dialog.AddOption("I'll just be moving along then.")
	Dialog.Start()
end

function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I need you to follow our leads and track down Pythus.  Once you find him, make sure he never works again.  You bring me Pythus' cap, and I'll pay you for the effort.  Deal?")
	Dialog.AddVoiceover("voiceover/english/optional1/sergeant_nominus/fprt_south/sergeantnominus003.mp3", 2351687031, 1683269237)
	Dialog.AddOption("Deal.", "Dialog4")
	Dialog.AddOption("I don't think so.")
	Dialog.Start()
end

function Dialog8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hail, citizen.  If you have something to report then speak up.  Otherwise, move along.")
	Dialog.AddVoiceover("voiceover/english/optional1/sergeant_nominus/fprt_south/sergeantnominus000.mp3", 2687891400, 2549215959)
	Dialog.AddOption("I'm actually just looking for work.", "Dialog2")
	Dialog.AddOption("I'll just be moving along then.")
	Dialog.Start()
end

