--[[
	Script Name		: SpawnScripts/SouthFreeport/CorporalHenkRimebreaker.lua
	Script Purpose	: Corporal Henk Rimebreaker
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
Dialog3(NPC, Spawn)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Looking for a fight?")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_2_1002.mp3", 0, 0)
	Dialog.AddOption("Who stepped on your tiara?", "Dialog15")
	Dialog.AddOption("Not right now.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Not in that sense.  A squire is one who's willing to help his or her clients experience XXXXXXX.  All we ask is that you have an open mind and a desire to help others.")
	Dialog.AddOption("What must I do?", "Dialog7")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Looking for a fight?")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_1_1002.mp3", 0, 0)
	Dialog.AddOption("Who stepped on your tiara?", "Dialog15")
	Dialog.AddOption("Not right now.")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Are you trying to bait me?  I could crush your head before you'd even realize it.")
	Dialog.AddOption("It sounded more like you were trying to bait me.", "Dialog12")
	Dialog.AddOption("Temper, temper.  I'll leave you be.")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You've got an open mind and heart, friend.  I don't need the coin.  I'm a squire in my own right and it seems to me that you'd make an excellent client.  If you're interested in living beyond these city walls, that is.")
	Dialog.AddOption("A squire? You mean a landholder?", "Dialog2")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Looking for a fight?")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_3_1060.mp3", 0, 0)
	Dialog.AddOption("Who stepped on your tiara?", "Dialog15")
	Dialog.AddOption("Not right now.")
	Dialog.Start()
end

function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I've heard that there's a large cache of weapons, maybe armor, hidden someplace.  We need to find out where and what this cache is.  A gnomish squire made some listenomitrons.  Once they're in place, we can listen in.  Trouble is, these things can only be placed at night and I'm on duty then.")
	Dialog.AddOption("I can place them for you.", "Dialog16")
	Dialog.Start()
end

function Dialog8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Not in that sense.  A squire is one who's willing to help his or her clients experience freedom.  All we ask is that you have an open mind and a desire to help others.")
	Dialog.AddOption("What must I do?", "Dialog7")
	Dialog.Start()
end

function Dialog9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Looking for a fight?")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_3_1002.mp3", 0, 0)
	Dialog.AddOption("Who stepped on your tiara?", "Dialog15")
	Dialog.AddOption("Not right now.")
	Dialog.Start()
end

function Dialog10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Looking for a fight?")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_1_1002.mp3", 0, 0)
	Dialog.AddOption("Not right now.")
	Dialog.Start()
end

function Dialog11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Leaving's not easy, whether it's your warm bed on a cold morning or leaving your job.  Freeport doesn't take kindly to those who'd leave it.  The Militia, that is.  Leaving the Militia.")
	Dialog.AddOption("That's not what you were going to say, is it?", "Dialog4")
	Dialog.Start()
end

function Dialog12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Sometimes I don't speak as clearly as I should.  My mind's muddled with local duties and problems.  And yet...in my military travels, I've been to places that I wouldn't mind seeing again.  Not in uniform; folks tend to act unnatural when they see the insignia.  Without this uniform, folks might treat me with an open mind.")
	Dialog.AddOption("I've got an open mind.", "Dialog14")
	Dialog.Start()
end

function Dialog13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The Militia's been good to me, in some ways.  But in others...it's all political.  Not at all what I expected.  With five hundred gold in my pocket, I could clear out and do what I want to do.  Can you help me out?")
	Dialog.AddOption("That's a lot of coin, but I could probably get it for you somehow.", "Dialog5")
	Dialog.AddOption("I don't know where to get that kind of coin.  How about half that?", "Dialog5")
	Dialog.AddOption("Five hundred gold! Do I look like I'm wealthy? Forget it!")
	Dialog.AddOption("Never speak to me again or I'll report you to your superiors.")
	Dialog.Start()
end

function Dialog14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Do you travel much beyond the city's walls?  Do you sometimes wonder what it would be like to live without looking over your shoulders constantly?  To talk on the street corners with folks who don't seem afraid of who you are, or what you're wearing?")
	Dialog.AddOption("Sometimes, yes.", "Dialog13")
	Dialog.AddOption("Never.  I'll be on my way now.")
	Dialog.Start()
end

function Dialog15(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hah! That was a good one! Never mind my temper.  Years spent in the Militia make me on edge.  It's no way to live, always looking for a fight even when you don't want a battle.")
	Dialog.AddOption("Why don't you just leave the Militia then?", "Dialog11")
	Dialog.AddOption("Are you kidding? That's the only way to live, loser.")
	Dialog.Start()
end

function Dialog16(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("That's an enormous help, friend.  When you're done, go to the pub room at the Blood Haze Inn in West Freeport.  You'll meet another squire there who'll help you on your way.")
	Dialog.AddOption("I'll do that.")
	Dialog.Start()
end

