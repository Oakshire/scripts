--[[
	Script Name		: SpawnScripts/NorthQeynos/ToranimSkyblade.lua
	Script Purpose	: Toranim Skyblade
	Script Author	: Dorbin
	Script Date		: 2022.04.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
Dialog3(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,2)

	if choice == 1 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", 0, 0, Spawn)
	elseif choice == 2 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1004.mp3", 0, 0, Spawn)
	end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Good luck to you in your travels!")
	Dialog.AddOption("You as well.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Yes, they placed it within the tomb of the Stormlords in remembrance of the fallen paladin. The sword should still be in the tomb.  If you could gain access to it, you could retrieve the Ghoulbane.  Bring me the sword, and I will perform a ritual to reseal the adornment to the sword.")
	Dialog.AddVoiceover("voiceover/english/toranim_skyblade/qey_north/toranimskyblade009.mp3", 2237035559, 1764211104)
	Dialog.AddOption("That sounds like a plan.  I'll work on recovering the sword. ", "Dialog5")
	Dialog.AddOption("Going after old holy swords isn't my idea of fun.  I don't even use a sword.")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC,"","","bow",0,0,Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Greetings, adventurer.  It's good to see citizens visiting the Temple of Life.  Many great blessings can come from following the doctrines taught here.")
	Dialog.AddVoiceover("voiceover/english/toranim_skyblade/qey_north/toranimskyblade001.mp3", 708306417, 1317357105)
	Dialog.AddOption("I'll keep that in mind. ")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I knew it would be.  What you hold in your hand is the blessed adornment that once rested within the holy blade Ghoulbane.  It was consecrated by the priests of Life to assist paladins of good in the destruction of the undead.")
	Dialog.AddVoiceover("voiceover/english/toranim_skyblade/qey_north/toranimskyblade005.mp3", 1816418500, 477083357)
	Dialog.AddOption("If I have the adornment, where is the sword? ", "Dialog6")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Very good.  Seek out the sword in the tomb of the Stormlords within Stormhold.  Bring it to me and I will combine the sword with its adornment.")
	Dialog.AddVoiceover("voiceover/english/toranim_skyblade/qey_north/toranimskyblade012.mp3", 3490839150, 3327388073)
	Dialog.AddOption("I hope to be back soon. ", "Dialog1")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("As the tale goes, the Ghoulbane was passed down through generations until it found its way into the hands of an honorable Knight of Thunder. This paladin was well known for seeking out and destroying the evil corruption of the undead.  The legend claims the paladin carried Ghoulbane one last time on a crusade to vanquish the darkness, a crusade he never finished.")
	Dialog.AddVoiceover("voiceover/english/toranim_skyblade/qey_north/toranimskyblade006.mp3", 3570283397, 520407432)
	Dialog.AddOption("What happened to him? ", "Dialog8")
	Dialog.Start()
end

function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hello again! Did you defeat the ghouls in Stormhold?")
	Dialog.AddVoiceover("voiceover/english/toranim_skyblade/qey_north/toranimskyblade004.mp3", 3777732585, 1379876617)
	Dialog.AddOption("Yes, the stone feels warmer and is faintly glowing now. ", "Dialog4")
	Dialog.AddOption("No, I haven't destroyed the ghouls there yet. ")
	Dialog.Start()
end

function Dialog8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("He never returned from that journey.  His squire returned sometime later here in Qeynos telling of the hordes of undead that poured out of the castle as his brave lord fought valiantly to vanquish the darkness, but they were too much... Ghoulbane had failed him and the squire fled.")
	Dialog.AddVoiceover("voiceover/english/toranim_skyblade/qey_north/toranimskyblade007.mp3", 1283676569, 1072083998)
	Dialog.AddOption("So Ghoulbane still rests in that castle? ", "Dialog9")
	Dialog.Start()
end

function Dialog9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("No, the Knights of Thunder mounted an attack on the castle when word reached them that the paladin had fallen.  They did not succeed in destroying the evil, but they found the spot where the paladin was slain.  All that was recovered was the sword.  Strangely, the adornment was missing.")
	Dialog.AddVoiceover("voiceover/english/toranim_skyblade/qey_north/toranimskyblade008.mp3", 314223038, 1627193800)
	Dialog.AddOption("So the Knights have the sword? ", "Dialog2")
	Dialog.Start()
end

