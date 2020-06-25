--[[
	Script Name	: SpawnScripts/Nettleville/Fallsworth.lua
	Script Purpose	: Fallsworth <Qeynos Guard>
	Script Author	: John Adams/Scatman
	Script Date	: 2008.09.24
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional5/guard_fallsworth/qey_village01/lore_fallsworth_000.mp3", "", "", 4021203064, 431523651, Spawn)
	AddConversationOption(conversation, "Why should I be cautious?", "dlg_1_1")
	AddConversationOption(conversation, "Thanks for the warning.")
	StartConversation(conversation, NPC, Spawn, "Welcome to the kingdom of Qeynos, young traveler!  I'm certain you will find yourself right at home in this fair hovel.  Aaaah, but I see the spark of adventure in your eyes.  Indeed, there's a great deal to explore in the city alone!  But do not let Qeynos' grandeur deceive you from caution, my friend.")
end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional5/guard_fallsworth/qey_village01/lore_fallsworth_001.mp3", "", "", 586122815, 4182581793, Spawn)
	AddConversationOption(conversation, "Are the catacombs really that dangerous?", "dlg_1_2")
	AddConversationOption(conversation, "I'll keep that in mind, thanks.")
	StartConversation(conversation, NPC, Spawn, "Of course you are well protected inside the city and village gates, so please do not let my words frighten you here.  However, should you venture into the catacombs, as so many young and curious adventurers do, it would be best for you to leave the comfort and safety of the city behind.")
end

function dlg_1_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional5/guard_fallsworth/qey_village01/lore_fallsworth_002.mp3", "", "", 2161099564, 821412195, Spawn)
	AddConversationOption(conversation, "What rumors?", "dlg_1_3")
	AddConversationOption(conversation, "I'll be sure to keep an eye out.")
	StartConversation(conversation, NPC, Spawn, "The catacombs are quite dangerous, yes.  A great many unsavory characters have been known to take shelter in these often unchecked environments.  Of course the riff-raff are the usual thieves or smugglers and are relatively easy to remove, but there have been some rumors as of late that hint at a more disturbing presence in the catacombs.")
end

function dlg_1_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional5/guard_fallsworth/qey_village01/lore_fallsworth_003.mp3", "", "", 2083062858, 1489848311, Spawn)
	AddConversationOption(conversation, "The Bloodsabers?  Who are they?", "dlg_1_4")
	AddConversationOption(conversation, "Rumors don't concern me right now.")
	StartConversation(conversation, NPC, Spawn, "I really shouldn't be telling you this; I don't want to frighten you, or worse, spur you into action, but I think that you ought to know for your own safety.  These rumors, and mind you they are unconfirmed at this time, hint at the possible return of the Bloodsaber cult.")
end

function dlg_1_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional5/guard_fallsworth/qey_village01/lore_fallsworth_004.mp3", "", "", 1653477530, 2455296289, Spawn)
	AddConversationOption(conversation, "What was the War of Plagues?", "dlg_1_5")
	AddConversationOption(conversation, "I'll keep an eye out when in the catacombs.")
	StartConversation(conversation, NPC, Spawn, "The Bloodsabers were an underground cult dedicated to the god of plagues, Bertoxxulous.  They were eradicated after their defeat in the War of Plagues during the Age of Turmoil, so these rumors are to be taken under a bit of skepticism.")
end

function dlg_1_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional5/guard_fallsworth/qey_village01/lore_fallsworth_005.mp3", "", "", 3466462498, 3475796001, Spawn)
	AddConversationOption(conversation, "What happened?", "dlg_1_6")
	AddConversationOption(conversation, "Who was Lord Grimrot?", "dlg_2_7")
	AddConversationOption(conversation, "Apparently Qeynos won.  I don't need to know anything more than that.")
	StartConversation(conversation, NPC, Spawn, "During the Age of Turmoil, the War of Plagues spanned over the near entirety of the Qeynos kingdom.  The Bloodsabers had conjured an army of plague-ridden undead soldiers and sent this festering horde upon the innocents of the kingdom.  An undead knight known then as Lord Grimrot led this invasion.  His thirst for destruction and power was overwhelming.  For a time, it seemed he would be victorious.")
end

function dlg_1_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional5/guard_fallsworth/qey_village01/lore_fallsworth_006.mp3", "", "", 4294575441, 4031828863, Spawn)
	AddConversationOption(conversation, "But Qeynos obviously recovered, right?", "dlg_1_7")
	AddConversationOption(conversation, "I've got to go.")
	StartConversation(conversation, NPC, Spawn, "Although the war lasted no more than two months, a great many innocents and noble warriors were lost.  The undead horde, along with Lord Grimrot himself, eventually fell to the might of Qeynos' armies and its valiant and brave people.  Still, so many had been lost and the earth itself had been soiled with the plague carried by the undead.")
end

function dlg_1_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional5/guard_fallsworth/qey_village01/lore_fallsworth_007.mp3", "", "", 2009679352, 4180928206, Spawn)
	AddConversationOption(conversation, "What was the treachery?", "dlg_1_8")
	AddConversationOption(conversation, "Qeynos survived and stands today.  I needn't hear any more.")
	StartConversation(conversation, NPC, Spawn, "Indeed, the spirit of Qeynos could not be broken and the kingdom moved past the atrocities of the war. The undead hordes were forced into the earth, buried for all time by the powers of Qeynos' combined priesthoods.  However, Qeynos would face yet another mournful loss; the senseless treachery of one of our own was revealed.")
end

function dlg_1_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional5/guard_fallsworth/qey_village01/lore_fallsworth_008.mp3", "", "", 1513625783, 641889157, Spawn)
	AddConversationOption(conversation, "How did Kane's treason contribute to the loss of lives?", "dlg_1_9")
	AddConversationOption(conversation, "I've got to go.")
	StartConversation(conversation, NPC, Spawn, "Antonious Bayle IV, the then current ruler of Qeynos, had a half-brother, Kane Bayle.  Kane had served as Captain of the Guard for most of Antonious' rule.  Kane's jealousy at his brother's ascension had corrupted his judgment and he had allied himself in secret with the Bloodsabers many years before the war.")
end

function dlg_1_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional5/guard_fallsworth/qey_village01/lore_fallsworth_009.mp3", "", "", 3084970022, 3402267638, Spawn)
	AddConversationOption(conversation, "Why do people think that they've come back?", "dlg_1_10")
	AddConversationOption(conversation, "I've got to go.")
	StartConversation(conversation, NPC, Spawn, "Kane had assured that the armies of Qeynos were spread thin throughout the world before the time of the Bloodsaber's invasion.  When the hordes came, Qeynos was unprepared.  Although Kane survived the war, he did not escape the justice of Qeynos.  He was put to death along with the other captured Bloodsabers.  The Bloodsabers had been defeated and forever eradicated from Qeynos, or so it was thought.")
end

function dlg_1_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional5/guard_fallsworth/qey_village01/lore_fallsworth_010.mp3", "", "", 538439861, 3762223589, Spawn)
	AddConversationOption(conversation, "Maybe I can scout out the catacombs for you?", "dlg_1_11")
	AddConversationOption(conversation, "I've got to go.")
	StartConversation(conversation, NPC, Spawn, "As I've said, there are only rumors floating about regarding the return of a Bloodsaber presence in the catacombs, but our history with the War of Plagues has forced us to handle these rumors with a degree of seriousness.  The Qeynos guard has been into the catacombs numerous times, but we have found no definitive evidence of any such revival.")
end

function dlg_1_11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional5/guard_fallsworth/qey_village01/lore_fallsworth_011.mp3", "", "", 3663318123, 1398288957, Spawn)
	AddConversationOption(conversation, "Oh, all right then.  Well, thanks for the warning.", "dlg_1_12")
	StartConversation(conversation, NPC, Spawn, "No, I wouldn't dare put you in possible danger.  The discovery of the cult, if there even is one, is for the Qeynos guard to handle.  I do appreciate your brave and honorable offer.  I just want you to be fairly warned in case that these rumors do turn out to be true. ")
end









function dlg_2_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional5/guard_fallsworth/qey_village01/lore_fallsworth_012.mp3", "", "", 2861109623, 1027357234, Spawn)
	AddConversationOption(conversation, "How did Lord Grimrot die?", "dlg_1_6")
	AddConversationOption(conversation, "I've got to go.")
	StartConversation(conversation, NPC, Spawn, "Lord Grimrot was a powerful undead knight of Bertoxxulous who was notorious for his brutal tyranny in the outer territories of Qeynos.  He wielded an ancient and powerful relic, Pestilence.  This war scythe was said to have been forged on the Plane of Disease and was the source of his power.  The truth to any of this is unknown for the scythe was not recovered with Grimrot's remains.")
end