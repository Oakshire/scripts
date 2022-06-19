--[[
    Script Name    : SpawnScripts/NorthFreeport/VassiDarkscale.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.19 04:06:37
    Script Purpose : 
                   : 
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

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,5)

	if choice == 1 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1048.mp3", 0, 0, Spawn)
	elseif choice == 2 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1048.mp3", 0, 0, Spawn)
	elseif choice == 3 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1048.mp3", 0, 0, Spawn)
	elseif choice == 4 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1028.mp3", 0, 0, Spawn)
	elseif choice == 5 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1028.mp3", 0, 0, Spawn)
	end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You come back to Vassi.  I see no pieces of the order I sent with you!  It doesn't please Vassi to have his customers orders late.  Comes back when you're done.")
	Dialog.AddVoiceover("voiceover/english/vassi_darkscale/fprt_north/quests/vassi_darkscale/vassi005.mp3", 2383749619, 1590677347)
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Vassi finds you less repulsive to look at than most.  So it is good to see you again.  You wish to fill another order for Vassi?")
	Dialog.AddVoiceover("voiceover/english/vassi_darkscale/fprt_north/quests/vassi_darkscale/vassi010.mp3", 511468590, 2673212781)
	Dialog.AddOption("I'm here am I not?  What do you have?", "Dialog9")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Vassi finds you less repulsive to look at than most.  So it is good to see you again.  You wish to fill another order for Vassi?")
	Dialog.AddVoiceover("voiceover/english/vassi_darkscale/fprt_north/quests/vassi_darkscale/vassi010.mp3", 511468590, 2673212781)
	Dialog.AddOption("Yes, what do you have this time Vassi?", "Dialog10")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You come to speak to Vassi, do you?  What can I do for you? Do you want someone to disappear? Or perhaps I can procure something for you?")
	Dialog.AddVoiceover("voiceover/english/vassi_darkscale/fprt_north/quests/vassi_darkscale/vassi001.mp3", 1012469301, 3152066826)
	Dialog.AddOption("What things might those be?", "Dialog7")
	Dialog.AddOption("I have no one I need killed at the moment, maybe later.")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ooh, Vassi is pleased, yes!  As Vassi promised, here is your payment. Don't mind the scratches--those are only cosmetic.")
	Dialog.AddVoiceover("voiceover/english/vassi_darkscale/fprt_north/quests/vassi_darkscale/vassi009.mp3", 1936712909, 466634042)
	Dialog.AddOption("Thank you... I think.")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("If you get Vassi what he needs, Vassi get you what you need.  I have set of coverings for your skins. It will protect you in battle.  You get,Vassi gives. Sound good?")
	Dialog.AddVoiceover("voiceover/english/vassi_darkscale/fprt_north/quests/vassi_darkscale/vassi003.mp3", 2874082209, 4209058164)
	Dialog.AddOption("Yes, that sounds fine.  What do you need first?", "Dialog11")
	Dialog.AddOption("Find someone else for this, I'm not interested.")
	Dialog.Start()
end

function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You haven't heard of Vassi?  I'm so ashamed that word of my abilites has not reached your ears.  I deal in ... things or people ... or items.  People need many things from Vassi. If you help Vassi, he will help you. Perhaps you need protection for your thin skin?")
	Dialog.AddVoiceover("voiceover/english/vassi_darkscale/fprt_north/quests/vassi_darkscale/vassi002.mp3", 3928436542, 1633870205)
	Dialog.AddOption("I'm listening.", "Dialog6")
	Dialog.AddOption("No, I'm not interested right now.")
	Dialog.Start()
end

function Dialog8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Vassi does not like the looks of you.  Please move out of his view so he may continue to enjoy it.")
	Dialog.AddVoiceover("voiceover/english/vassi_darkscale/fprt_north/quests/vassi_darkscale/vassi017.mp3", 3845539405, 604412982)
	Dialog.AddOption("Fine!")
	Dialog.Start()
end

function Dialog9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Yes, you are here, and so is my next order. How fortunate for us.  Please take this list and bring back what's on it.  Vassi does not know why these things are needed, but Vassi is wise enough not to ask.")
	Dialog.AddVoiceover("voiceover/english/vassi_darkscale/fprt_north/quests/vassi_darkscale/vassi012.mp3", 3683372525, 905543211)
	Dialog.AddOption("It shall be done. ")
	Dialog.Start()
end

function Dialog10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Vassi has found a way to make much money.  Here is the order.  The demand for these things has gone up recently, and they are not easy to come by.  If you can get them, Vassi would be very grateful.  ")
	Dialog.AddVoiceover("voiceover/english/vassi_darkscale/fprt_north/quests/vassi_darkscale/vassi011.mp3", 3316326082, 1889719228)
	Dialog.AddOption("I'll return soon Vassi.")
	Dialog.Start()
end

function Dialog11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Good, good. Vassi is pleased. Take this order. I need the things on it soon. Make haste, and I'll pay you in skins for your skin.")
	Dialog.AddVoiceover("voiceover/english/vassi_darkscale/fprt_north/quests/vassi_darkscale/vassi004.mp3", 2390136083, 2595440583)
	Dialog.AddOption("I'll have the order back to you soon.")
	Dialog.Start()
end

function Dialog12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You came back! Vassi is pleased to see you again.  You have the order, yes?  ")
	Dialog.AddVoiceover("voiceover/english/vassi_darkscale/fprt_north/quests/vassi_darkscale/vassi006.mp3", 4286313100, 3032785697)
	Dialog.AddOption("Yes, here are the things you asked for.", "Dialog5")
	Dialog.Start()
end

