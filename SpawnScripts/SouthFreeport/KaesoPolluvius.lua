--[[
	Script Name		: SpawnScripts/SouthFreeport/KaesoPolluvius.lua
	Script Purpose	: Kaeso Polluvius
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
Dialog6(NPC, Spawn)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("That's right, down at the Sailing Keg.  Aldrevia might have some information for you, but I doubt it.  She's not all there, if you get what I'm sayin'.")
	Dialog.AddVoiceover("voiceover/english/optional1/kaeso_polluvius/fprt_south/kaesopolluvius004.mp3", 3213604743, 1494043932)
	Dialog.AddOption("Very well.  I'll go speak to her.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Nominus sent you?  What do I care?  I don't owe him anything! Who does he think he is?  I'm not risking my neck for anyone's sake!")
	Dialog.AddVoiceover("voiceover/english/optional1/kaeso_polluvius/fprt_south/kaesopolluvius002.mp3", 3712196458, 3134562356)
	Dialog.AddOption("Nominus is paying me to take care of Pythus.  Tell me where he is and you won't have to worry.", "Dialog4")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You looking for someone?")
	Dialog.AddVoiceover("voiceover/english/optional1/kaeso_polluvius/fprt_south/kaesopolluvius000.mp3", 100397552, 1288642340)
	Dialog.AddOption("No.")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Okay, fine.  Yeah, he comes around here every once and a while.  Keeps to himself so I don't bother him.  What he does away from my docks don't concern me.  I hear he finds most of his marks down at Aldrevia's place.")
	Dialog.AddVoiceover("voiceover/english/optional1/kaeso_polluvius/fprt_south/kaesopolluvius003.mp3", 3280879674, 1740301065)
	Dialog.AddOption("Aldrevia's place?", "Dialog1")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Never heard of him.  Say, interested in some grog?  Fresh in from down south.  Real cheap.")
	Dialog.AddVoiceover("voiceover/english/optional1/kaeso_polluvius/fprt_south/kaesopolluvius001.mp3", 2711827442, 1804433988)
	Dialog.AddOption("Look, Nominus sent me.  He says you've seen Pythus around here.", "Dialog2")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You looking for someone?")
	Dialog.AddVoiceover("voiceover/english/optional1/kaeso_polluvius/fprt_south/kaesopolluvius000.mp3", 100397552, 1288642340)
	Dialog.AddOption("Yes actually.  I'm looking for a man named Pythus.", "Dialog5")
	Dialog.AddOption("No.")
	Dialog.Start()
end

