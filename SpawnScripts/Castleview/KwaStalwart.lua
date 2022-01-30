--[[
    Script Name    : SpawnScripts/Castleview/KwaStalwart.lua
    Script Author  : Dorbin
    Script Date    : 2022.01.29 03:01:43
    Script Purpose : Placeholder Parsed Dialog
                   : 
--]]


function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()


		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1028.mp3", "", "", 0, 0, Spawn)
		if GetRace(Spawn)== 4 then
		AddConversationOption(conversation, "Hail, kind sir.  Need ye a hand to aid thee?")
		end
		AddConversationOption(conversation, "Good day to you.")
	StartConversation(conversation, NPC, Spawn, "Salutations and greetings to ye, noble one.")
    end

	if convo==3 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1028.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Nay.  I will return with ale in hand!", "dlg_3_1")
		StartConversation(conversation, NPC, Spawn, "Have ye the ale to vanquish this thirst?")
	end

	if convo==6 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1028.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Thine appreciation is not necessary.  Good deeds doth reward themselves.  ", "dlg_6_1")
		StartConversation(conversation, NPC, Spawn, "Honorable Marr!  Ye have brought the libation hither.  I must thank thee for thine hasty return.")
	end

	if convo==7 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1028.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "A bit later, sir.  I have given my word to aid another at this time.")
		StartConversation(conversation, NPC, Spawn, "Mind ye, another task?  I would appreciate if thou wouldst lend your wits and sword to me.")
	end

	if convo==8 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1028.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Nay.  Where mighten I find the brave Rrak Boldfist?", "dlg_8_1")
		StartConversation(conversation, NPC, Spawn, "Have ye sought Rrak Boldfist of the sight his eyes doth catch?")
	end

	if convo==11 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1028.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Ogre, he is certain.  'Twas not far trek where he doth spot this brute.  I woulds't go and see with mine own eyes this location, if ye allow it.", "dlg_11_1")
		StartConversation(conversation, NPC, Spawn, "What word hath thou brought from Rrak of the Ogre?")
	end

	if convo==12 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1028.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I shall.  For the glory of Marr!", "dlg_12_1")
		StartConversation(conversation, NPC, Spawn, "Ye must investigate the locale Down Below upon which the Ogre was spotted.")
	end



function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "To valor and honor!", "dlg_0_2")
	StartConversation(conversation, NPC, Spawn, "Bringing due glory to the name of Marr, I will and do!  Our creator hath given unto us the mind and brawn to defeat evil, and aid the helpless. His will be done, every moment, and every breath.")
end

function dlg_0_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Is there trouble afoot?", "dlg_0_3")
	StartConversation(conversation, NPC, Spawn, "Valor and honor above all else.  I am bound by my word to await a message of great import upon this spot.")
end

function dlg_0_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Thus is he deserving of our glory and praise.  I bid you good day, until we meet again.")
	StartConversation(conversation, NPC, Spawn, "Pray tell!  I know not, but am soon to find out.  Marr will guide my sword when needed, as he hath done in the past.")
end

function dlg_0_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Genocide was not to be our fate. ", "dlg_0_5")
	StartConversation(conversation, NPC, Spawn, "This Froglok has seen battles, to be sure.  Long before this Froglok was tad or egg, we doth had a long standing war against the vile Ogres.  Our beloved Gukta was overwhelmed as the first casualty of the expanding Rallosian Empire.  Our people were almost completely wiped out by the onslaught.  ")
end

function dlg_0_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Cowardice they knew not.", "dlg_0_6")
	StartConversation(conversation, NPC, Spawn, "Indeed not.  Overwhelmed and unable to defend their city, the survivors were forced to abandon Gukta.  Refuge they sought in the lowest portions of the former citadel of Guk.  Relentless, the Rallosians continued to pursue the Frogloks.  Those that had survived feared dusk was upon them, but would not slacken.  ")
end

function dlg_0_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "The green mist.", "dlg_0_7")
	StartConversation(conversation, NPC, Spawn, "Fought on they did, to protect the tads and maidens amongst them.  Prayers to Marr did not go unanswered!  Praised he was, by our people's determination and valor.  He released upon the Ogres a deadly cloud to deliver us in our moment of most dire need. ")
end

function dlg_0_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Then came the destruction that was the shattering, and the further scattering of our peoples.", "dlg_0_8")
	StartConversation(conversation, NPC, Spawn, "Aye. 'Twas rolling through the swamps and cities alike, smiting the Ogres.  The rejoicing Frogloks were then able to reclaim Gukta.")
end

function dlg_0_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Until recently?", "dlg_0_9")
	StartConversation(conversation, NPC, Spawn, "Come it did, and many evils with it.  Villainy is persistent!  During the shattering, and up until very recently, the soul of the hateful Rallosian General Urduuk, would not rest.  Unknown to anyone, he and his army were in a state of undeath, deep within the Cleft of Thule.  There they would stay to enslave and torture any Froglok that ventured in. ")
end

function dlg_0_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Bloody and destructive the wars were, but delivered we were.  Bless Marr! ", "dlg_0_10")
	StartConversation(conversation, NPC, Spawn, "Aye.  For once this blasphemy and injustice was known, wave of mighty wave of adventurers battled valiantly and defeated Urduuk's armies.  I was amongst those that battled to release our brethren.")
end

function dlg_0_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "A bit later, sir.  I am on a quest myself, at this time.")
	StartConversation(conversation, NPC, Spawn, "Delivered we were, but not before many wrongs were dealt, and more to be fought there are.  Mind ye go fetch a pint for me, and quench my thirst?  Grown parched have I with the telling of this tale.")
end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "To valor and honor!", "dlg_1_2")
	StartConversation(conversation, NPC, Spawn, "Bringing due glory to the name of Marr, I will and do!  Our creator hath given unto us the mind and brawn to defeat evil, and aid the helpless. His will be done, every moment, and every breath.")
end

function dlg_1_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Is there trouble afoot?", "dlg_1_3")
	StartConversation(conversation, NPC, Spawn, "Valor and honor above all else.  I am bound by my word to await a message of great import upon this spot.")
end

function dlg_1_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Thus is he deserving of our glory and praise.  I bid you good day, until we meet again.")
	StartConversation(conversation, NPC, Spawn, "Pray tell!  I know not, but am soon to find out.  Marr will guide my sword when needed, as he hath done in the past.")
end

function dlg_2_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "To valor and honor!", "dlg_2_2")
	StartConversation(conversation, NPC, Spawn, "Bringing due glory to the name of Marr, I will and do!  Our creator hath given unto us the mind and brawn to defeat evil, and aid the helpless. His will be done, every moment, and every breath.")
end

function dlg_2_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Is there trouble afoot?", "dlg_2_3")
	StartConversation(conversation, NPC, Spawn, "Valor and honor above all else.  I am bound by my word to await a message of great import upon this spot.")
end

function dlg_2_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Thus is he deserving of our glory and praise.  I bid you good day, until we meet again.")
	StartConversation(conversation, NPC, Spawn, "Pray tell!  I know not, but am soon to find out.  Marr will guide my sword when needed, as he hath done in the past.")
end

function dlg_2_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Genocide was not to be our fate. ", "dlg_2_5")
	StartConversation(conversation, NPC, Spawn, "This Froglok has seen battles, to be sure.  Long before this Froglok was tad or egg, we doth had a long standing war against the vile Ogres.  Our beloved Gukta was overwhelmed as the first casualty of the expanding Rallosian Empire.  Our people were almost completely wiped out by the onslaught.  ")
end

function dlg_2_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Cowardice they knew not.", "dlg_2_6")
	StartConversation(conversation, NPC, Spawn, "Indeed not.  Overwhelmed and unable to defend their city, the survivors were forced to abandon Gukta.  Refuge they sought in the lowest portions of the former citadel of Guk.  Relentless, the Rallosians continued to pursue the Frogloks.  Those that had survived feared dusk was upon them, but would not slacken.  ")
end

function dlg_2_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "The green mist.", "dlg_2_7")
	StartConversation(conversation, NPC, Spawn, "Fought on they did, to protect the tads and maidens amongst them.  Prayers to Marr did not go unanswered!  Praised he was, by our people's determination and valor.  He released upon the Ogres a deadly cloud to deliver us in our moment of most dire need. ")
end

function dlg_2_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Then came the destruction that was the shattering, and the further scattering of our peoples.", "dlg_2_8")
	StartConversation(conversation, NPC, Spawn, "Aye. 'Twas rolling through the swamps and cities alike, smiting the Ogres.  The rejoicing Frogloks were then able to reclaim Gukta.")
end

function dlg_2_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Until recently?", "dlg_2_9")
	StartConversation(conversation, NPC, Spawn, "Come it did, and many evils with it.  Villainy is persistent!  During the shattering, and up until very recently, the soul of the hateful Rallosian General Urduuk, would not rest.  Unknown to anyone, he and his army were in a state of undeath, deep within the Cleft of Thule.  There they would stay to enslave and torture any Froglok that ventured in. ")
end

function dlg_2_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Bloody and destructive the wars were, but delivered we were.  Bless Marr! ", "dlg_2_10")
	StartConversation(conversation, NPC, Spawn, "Aye.  For once this blasphemy and injustice was known, wave of mighty wave of adventurers battled valiantly and defeated Urduuk's armies.  I was amongst those that battled to release our brethren.")
end

function dlg_2_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "A bit later, sir.  I am on a quest myself, at this time.")
	StartConversation(conversation, NPC, Spawn, "Delivered we were, but not before many wrongs were dealt, and more to be fought there are.  Mind ye go fetch a pint for me, and quench my thirst?  Grown parched have I with the telling of this tale.")
end

function dlg_2_11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "A sweet bog spirit to drink down, will be delivered.")
	StartConversation(conversation, NPC, Spawn, "Excellent!  Pass the Fountain of Valor.  East of here ye will set thine sights upon the Hole in the Wall Tavern, next to the Qeynos Harbor gate.  Their bog water spirits would vanquish this thirst nicely.")
end

function dlg_2_12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Return, I shall!", "dlg_2_13")
	StartConversation(conversation, NPC, Spawn, "Halt, a moment!  Do not pay from thine own pockets.  Take this coin to exchange for the fine ale.")
end

function dlg_6_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Thank you, brave sir.", "dlg_6_2")
	StartConversation(conversation, NPC, Spawn, "Pish!  Thou wound me by refusing my gratitude.  Take this you must!")
end

function dlg_6_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "A bit later, sir.  I have given my word to aid another at this time.")
	StartConversation(conversation, NPC, Spawn, "Mind ye, another task?  I would appreciate if thou wouldst lend your wits and sword to me.")
end

function dlg_6_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What aid may I lend to you, noble sir?", "dlg_6_4")
	StartConversation(conversation, NPC, Spawn, "Brought to my diligent ear, it was!  The news is grave, and wilt take some careful and immediate attention.  ")
end

function dlg_6_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "With great haste!")
	StartConversation(conversation, NPC, Spawn, "A vile and destructive menace 'twas seen in the Down Below.  Description speaks that it was none other then an Ogre.  I pray you, inquiry Rrak Boldfist of his sight.")
end

function dlg_7_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What aid may I lend to you, noble sir?", "dlg_7_2")
	StartConversation(conversation, NPC, Spawn, "Brought to my diligent ear, it was!  The news is grave, and wilt take some careful and immediate attention.  ")
end

function dlg_7_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "With great haste!")
	StartConversation(conversation, NPC, Spawn, "A vile and destructive menace 'twas seen in the Down Below.  Description speaks that it was none other then an Ogre.  I pray you, inquiry Rrak Boldfist of his sight.")
end

function dlg_7_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Places as that guarentee rest will not find the followers of Marr!")
	StartConversation(conversation, NPC, Spawn, "The Down Below is a restless locale.  Below us ye find a labyrinth of crypts where unsavory merchants, outcasts and vermin of all shape and size have taken up residence.  Tread with care whenever ye enter it!")
end

function dlg_7_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Where mighten I find the brave Rrak Boldfist?", "dlg_7_5")
	StartConversation(conversation, NPC, Spawn, "Relentless, we battle such evils.  Seek Rrak Boldfist of the sight his eyes doth catch.")
end

function dlg_7_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/kwa_stalwart/qey_village04/newbie_path_froglok/kwastalwort044.mp3", "", "", 2180815554, 4004100692, Spawn)
		AddConversationOption(conversation, "Thank you, mighty sir!  With great haste, I take my leave.", "dlg_7_6")
	StartConversation(conversation, NPC, Spawn, "Rrak 'twas to return to The Repository.  He gives his aid to the scribe, inside.  It is set in the far North East corner of this fine town.")
end

function dlg_8_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Thank you, mighty sir!", "dlg_8_2")
	StartConversation(conversation, NPC, Spawn, "Rrak 'twas to return to The Repository.  It is set in the far North East corner of this fine town.")
end

function dlg_11_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I shall.  For the glory of Marr!", "dlg_11_2")
	StartConversation(conversation, NPC, Spawn, "Bless it, whole heartedly!  Go and regale me with thy findings soon. ")
end

