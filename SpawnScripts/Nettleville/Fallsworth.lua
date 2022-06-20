--[[
	Script Name	: SpawnScripts/Nettleville/Fallsworth.lua
	Script Purpose	: Fallsworth <Qeynos Guard>
	Script Author	: John Adams/Scatman
	Script Date	: 2008.09.24
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
Dialog11(NPC, Spawn)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Indeed, the spirit of Qeynos could not be broken and the kingdom moved past the atrocities of the war. The undead hordes were forced into the earth, buried for all time by the powers of Qeynos' combined priesthoods.  However, Qeynos would face yet another mournful loss; the senseless treachery of one of our own was revealed.")
	Dialog.AddVoiceover("voiceover/english/optional5/guard_fallsworth/qey_village01/lore_fallsworth_007.mp3", 2009679352, 4180928206)
	Dialog.AddOption("What was the treachery?", "Dialog2")
	Dialog.AddOption("Qeynos survived and stands today.  I needn't hear any more.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "", "", "orate", 0, 0, Spawn)
	Dialog.AddDialog("Antonious Bayle IV, the then current ruler of Qeynos, had a half-brother, Kane Bayle.  Kane had served as Captain of the Guard for most of Antonious' rule.  Kane's jealousy at his brother's ascension had corrupted his judgment and he had allied himself in secret with the Bloodsabers many years before the war.")
	Dialog.AddVoiceover("voiceover/english/optional5/guard_fallsworth/qey_village01/lore_fallsworth_008.mp3", 1513625783, 641889157)
	Dialog.AddOption("How did Kane's treason contribute to the loss of lives?", "Dialog3")
	Dialog.AddOption("I've got to go.")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Kane had assured that the armies of Qeynos were spread thin throughout the world before the time of the Bloodsaber's invasion.  When the hordes came, Qeynos was unprepared.  Although Kane survived the war, he did not escape the justice of Qeynos.  He was put to death along with the other captured Bloodsabers.  The Bloodsabers had been defeated and forever eradicated from Qeynos, or so it was thought.")
	Dialog.AddVoiceover("voiceover/english/optional5/guard_fallsworth/qey_village01/lore_fallsworth_009.mp3", 3084970022, 3402267638)
	Dialog.AddOption("Why do people think that they've come back?", "Dialog6")
	Dialog.AddOption("I've got to go.")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "", "", "no", 0, 0, Spawn)
	Dialog.AddDialog("No, I wouldn't dare put you in possible danger.  The discovery of the cult, if there even is one, is for the Qeynos guard to handle.  I do appreciate your brave and honorable offer.  I just want you to be fairly warned in case that these rumors do turn out to be true. ")
	Dialog.AddVoiceover("voiceover/english/optional5/guard_fallsworth/qey_village01/lore_fallsworth_011.mp3", 3663318123, 1398288957)
	Dialog.AddOption("Oh, all right then.  Well, thanks for the warning.")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
	Dialog.AddDialog("Of course you are well protected inside the city and village gates, so please do not let my words frighten you here.  However, should you venture into the catacombs, as so many young and curious adventurers do, it would be best for you to leave the comfort and safety of the city behind.")
	Dialog.AddVoiceover("voiceover/english/optional5/guard_fallsworth/qey_village01/lore_fallsworth_001.mp3", 586122815, 4182581793)
	Dialog.AddOption("Are the catacombs really that dangerous?", "Dialog7")
	Dialog.AddOption("I'll keep that in mind, thanks.")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("As I've said, there are only rumors floating about regarding the return of a Bloodsaber presence in the catacombs, but our history with the War of Plagues has forced us to handle these rumors with a degree of seriousness.  The Qeynos guard has been into the catacombs numerous times, but we have found no definitive evidence of any such revival.")
	Dialog.AddVoiceover("voiceover/english/optional5/guard_fallsworth/qey_village01/lore_fallsworth_010.mp3", 538439861, 3762223589)
	Dialog.AddOption("Maybe I can scout out the catacombs for you?", "Dialog4")
	Dialog.AddOption("I've got to go.")
	Dialog.Start()
end

function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The catacombs are quite dangerous, yes.  A great many unsavory characters have been known to take shelter in these often unchecked environments.  Of course the riff-raff are the usual thieves or smugglers and are relatively easy to remove, but there have been some rumors as of late that hint at a more disturbing presence in the catacombs.")
	Dialog.AddVoiceover("voiceover/english/optional5/guard_fallsworth/qey_village01/lore_fallsworth_002.mp3", 2161099564, 821412195)
	Dialog.AddOption("What rumors?", "Dialog12")
	Dialog.AddOption("I'll be sure to keep an eye out.")
	Dialog.Start()
end

function Dialog8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Lord Grimrot was a powerful undead knight of Bertoxxulous who was notorious for his brutal tyranny in the outer territories of Qeynos.  He wielded an ancient and powerful relic, Pestilence.  This war scythe was said to have been forged on the Plane of Disease and was the source of his power.  The truth to any of this is unknown for the scythe was not recovered with Grimrot's remains.")
	Dialog.AddVoiceover("voiceover/english/optional5/guard_fallsworth/qey_village01/lore_fallsworth_012.mp3", 2861109623, 1027357234)
	Dialog.AddOption("How did Lord Grimrot die?", "Dialog10")
	Dialog.AddOption("I've got to go.")
	Dialog.Start()
end

function Dialog9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The Bloodsabers were an underground cult dedicated to the god of plagues, Bertoxxulous.  They were eradicated after their defeat in the War of Plagues during the Age of Turmoil, so these rumors are to be taken under a bit of skepticism.")
	Dialog.AddVoiceover("voiceover/english/optional5/guard_fallsworth/qey_village01/lore_fallsworth_004.mp3", 1653477530, 2455296289)
	Dialog.AddOption("What was the War of Plagues?", "Dialog13")
	Dialog.AddOption("I'll keep an eye out when in the catacombs.")
	Dialog.Start()
end

function Dialog10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Although the war lasted no more than two months, a great many innocents and noble warriors were lost.  The undead horde, along with Lord Grimrot himself, eventually fell to the might of Qeynos' armies and its valiant and brave people.  Still, so many had been lost and the earth itself had been soiled with the plague carried by the undead.")
	Dialog.AddVoiceover("voiceover/english/optional5/guard_fallsworth/qey_village01/lore_fallsworth_006.mp3", 4294575441, 4031828863)
	Dialog.AddOption("But Qeynos obviously recovered, right?", "Dialog1")
	Dialog.AddOption("I've got to go.")
	Dialog.Start()
end

function Dialog11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
	Dialog.AddDialog("Welcome to the kingdom of Qeynos, young traveler!  I'm certain you will find yourself right at home in this fair hovel.  Aaaah, but I see the spark of adventure in your eyes.  Indeed, there's a great deal to explore in the city alone!  But do not let Qeynos' grandeur deceive you from caution, my friend.")
	Dialog.AddVoiceover("voiceover/english/optional5/guard_fallsworth/qey_village01/lore_fallsworth_000.mp3", 4021203064, 431523651)
	Dialog.AddOption("Why should I be cautious?", "Dialog5")
	Dialog.AddOption("Thanks for the warning.")
	Dialog.Start()
end

function Dialog12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "", "", "sniff", 0, 0, Spawn)
	Dialog.AddDialog("I really shouldn't be telling you this; I don't want to frighten you, or worse, spur you into action, but I think that you ought to know for your own safety.  These rumors, and mind you they are unconfirmed at this time, hint at the possible return of the Bloodsaber cult.")
	Dialog.AddVoiceover("voiceover/english/optional5/guard_fallsworth/qey_village01/lore_fallsworth_003.mp3", 2083062858, 1489848311)
	Dialog.AddOption("The Bloodsabers?  Who are they?", "Dialog9")
	Dialog.AddOption("Rumors don't concern me right now.")
	Dialog.Start()
end

function Dialog13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "", "", "orate", 0, 0, Spawn)
	Dialog.AddDialog("During the Age of Turmoil, the War of Plagues spanned over the near entirety of the Qeynos kingdom.  The Bloodsabers had conjured an army of plague-ridden undead soldiers and sent this festering horde upon the innocents of the kingdom.  An undead knight known then as Lord Grimrot led this invasion.  His thirst for destruction and power was overwhelming.  For a time, it seemed he would be victorious.")
	Dialog.AddVoiceover("voiceover/english/optional5/guard_fallsworth/qey_village01/lore_fallsworth_005.mp3", 3466462498, 3475796001)
	Dialog.AddOption("What happened?", "Dialog10")
	Dialog.AddOption("Who was Lord Grimrot?", "Dialog8")
	Dialog.AddOption("Apparently Qeynos won.  I don't need to know anything more than that.")
	Dialog.Start()
end
