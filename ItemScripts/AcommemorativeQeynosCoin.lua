--[[
    Script Name    : ItemScripts/AcommemorativeQeynosCoin.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.30 08:05:12
    Script Purpose : a commemorative coin speech broken into sections EMU players can hear.
                   : 
--]]

function examined(Item, Player)
choice = MakeRandomInt(0,100)
if choice >=2 then
    if GetClientVersion(Player) >546 then
    conversation = CreateConversation()
    PlayFlavor(Player, "voiceover/english/queen_antonia_bayle/qey_north/antonia_isle_speech_1.mp3", "", "", 499186274, 1744595600, Player)
    -- PlayFlavor(Player,"voiceover/english/tullia_domna/fprt_hood04/quests/tulladomna/tulla_x1_initial.mp3","","",309451026,621524268,Player)
    --	PlayFlavor(Player,"voiceover/english/queen_antonia_bayle/qey_north/antonia_isle_speech.mp3","","", 2297205435, 1273418227,Player)
    AddConversationOption(conversation, "\"Many among you...\"", "visage03")
    AddConversationOption(conversation, "Put the coin away.", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "As you clutch the coin in your hand, you hear a voice magically speaking in your mind.                                                                                                                                      \"Good traveler, you have seen much in your journey, and now you seek refuge in our humble City of Qeynos. As ruler and servant of the good people of Qeynos, I, Antonia Bayle, welcome you.\"")
    else
    conversation = CreateConversation()
    PlayFlavor(Player,"voiceover/english/queen_antonia_bayle/qey_north/antonia_isle_speech.mp3","","", 2297205435, 1273418227,Player)
    AddConversationOption(conversation, "Put the coin away.", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "As you clutch the coin in your hand, you hear a voice magically speaking in your mind.")    
end
else
conversation = CreateConversation() -- A SECRET DEEP DIVE INTO ANTONIA'S THOUGHTS (This is in jest, obviously)
PlayFlavor(Player,"voiceover/english/tullia_domna/fprt_hood04/quests/tulladomna/tulla_x1_initial.mp3","","",309451026,621524268,Player)
AddConversationOption(conversation, "Put the coin away.", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "As you clutch the coin in your hand, you hear a voice magically speaking in your mind.")
end
end

function visage03(Item, Player)
conversation = CreateConversation()
PlayFlavor(Player, "voiceover/english/queen_antonia_bayle/qey_north/antonia_isle_speech_2.mp3", "", "", 2366466723, 1207173576, Player)
AddConversationOption(conversation, "\"If you are tired...\"", "visage04")
AddConversationOption(conversation, "Put the coin away.", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "\"Many among you have traveled great distances, enduring hardships and facing terrible dangers.\"")
end

function visage04(Item, Player)
conversation = CreateConversation()
    PlayFlavor(Player, "voiceover/english/queen_antonia_bayle/qey_north/antonia_isle_speech_3.mp3", "", "", 1841028977, 3133868486, Player)
AddConversationOption(conversation, "\"You shall...\"", "visage05")
AddConversationOption(conversation, "Put the coin away.", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "\"If you are tired, cold or hungry, if you flee persecution, poverty or injustice, be comforted, there is a place at our hearth for you.\"")
end

function visage05(Item, Player)
conversation = CreateConversation()
    PlayFlavor(Player, "voiceover/english/queen_antonia_bayle/qey_north/antonia_isle_speech_4.mp3", "", "", 2202564065, 871912515, Player)
AddConversationOption(conversation, "\"Our own...\"", "visage06")
AddConversationOption(conversation, "Put the coin away.", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "\"You shall find rest in Qeynos.\"")
end

function visage06(Item, Player)
conversation = CreateConversation()
    PlayFlavor(Player, "voiceover/english/queen_antonia_bayle/qey_north/antonia_isle_speech_5.mp3", "", "", 1129117607, 63248962, Player)
AddConversationOption(conversation, "\"Your safety...\"", "visage07")
AddConversationOption(conversation, "Put the coin away.", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "\"Our own Qeynos guard pledges its service to your security.\"")
end

function visage07(Item, Player)
conversation = CreateConversation()
    PlayFlavor(Player, "voiceover/english/queen_antonia_bayle/qey_north/antonia_isle_speech_6.mp3", "", "", 1663362626, 2717555718, Player)
AddConversationOption(conversation, "\"The tribulations of Qeynos...\"", "visage08")
AddConversationOption(conversation, "Put the coin away.", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "\"Your safety and peace is our sacred trust.\"")
end

function visage08(Item, Player)
conversation = CreateConversation()
    PlayFlavor(Player, "voiceover/english/queen_antonia_bayle/qey_north/antonia_isle_speech_7.mp3", "", "", 3755081144, 1816040948, Player)
AddConversationOption(conversation, "\"If Qeynos has endured...\"", "visage09")
AddConversationOption(conversation, "Put the coin away.", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "\"The tribulations of Qeynos during the Age of Cataclysms are legendary -- destruction, plagues, horrors both natural and unnatural...\"")
end

function visage09(Item, Player)
conversation = CreateConversation()
    PlayFlavor(Player, "voiceover/english/queen_antonia_bayle/qey_north/antonia_isle_speech_8.mp3", "", "", 1646438592, 3991623974, Player)
AddConversationOption(conversation, "\"Prepare yourself...\"", "visage10")
AddConversationOption(conversation, "Put the coin away.", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "\"If Qeynos has endured, it is because of the steadfast loyalty and courage of her people.\"")
end

function visage10(Item, Player)
conversation = CreateConversation()
    PlayFlavor(Player, "voiceover/english/queen_antonia_bayle/qey_north/antonia_isle_speech_9.mp3", "", "", 2292019727, 2112049669, Player)
AddConversationOption(conversation, "\"All who yearn...\"", "visage11")
AddConversationOption(conversation, "Put the coin away.", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "\"Prepare yourself. When you enter the city gates, you accept the challenge of citizenship.\"")
end

function visage11(Item, Player)
conversation = CreateConversation()
    PlayFlavor(Player, "voiceover/english/queen_antonia_bayle/qey_north/antonia_isle_speech_10.mp3", "", "", 1463066361, 618547599, Player)
AddConversationOption(conversation, "\"Your loyalty...\"", "visage12")
AddConversationOption(conversation, "Put the coin away.", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "\"All who yearn to fully participate in the center of Qeynos must first prove themselves.\"")
end

function visage12(Item, Player)
conversation = CreateConversation()
    PlayFlavor(Player, "voiceover/english/queen_antonia_bayle/qey_north/antonia_isle_speech_11.mp3", "", "", 3316158990, 3680571955, Player)
AddConversationOption(conversation, "\"Qeynosians are...\"", "visage13")
AddConversationOption(conversation, "Put the coin away.", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "\"Your loyalty will be tested, for you must earn the right to be called citizen.\"")
end

function visage13(Item, Player)
conversation = CreateConversation()
    PlayFlavor(Player, "voiceover/english/queen_antonia_bayle/qey_north/antonia_isle_speech_12.mp3", "", "", 2036336595, 3509341224, Player)
AddConversationOption(conversation, "\"No doubt...\"", "visage14")
AddConversationOption(conversation, "Put the coin away.", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "\"Qeynosians are generous to travelers, but harsh with traitors.\"")
end

function visage14(Item, Player)
conversation = CreateConversation()
    PlayFlavor(Player, "voiceover/english/queen_antonia_bayle/qey_north/antonia_isle_speech_13.mp3", "", "", 2730892750, 1805998546, Player)
AddConversationOption(conversation, "\"I see...\"", "visage15")
AddConversationOption(conversation, "Put the coin away.", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "\"No doubt you have heard the boasting of Lucan De'Lere.\"")
end

function visage15(Item, Player)
conversation = CreateConversation()
    PlayFlavor(Player, "voiceover/english/queen_antonia_bayle/qey_north/antonia_isle_speech_14.mp3", "", "", 1986999100, 3686223802, Player)
AddConversationOption(conversation, "\"I trust...\"", "visage16")
AddConversationOption(conversation, "Put the coin away.", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "\"I see, however, that his lies have not enticed you into Freeport. Be grateful and thank the gods; you would not find a restful sanctuary there.\"")
end

function visage16(Item, Player)
conversation = CreateConversation()
    PlayFlavor(Player, "voiceover/english/queen_antonia_bayle/qey_north/antonia_isle_speech_15.mp3", "", "", 3873638463, 3215411094, Player)
AddConversationOption(conversation, "\"If this be not...\"", "visage17")
AddConversationOption(conversation, "Put the coin away.", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "\"I trust that you do not share in Lucan's deceit, and that the well-being of Qeynos and its people is in your heart.\"")
end

function visage17(Item, Player)
conversation = CreateConversation()
    PlayFlavor(Player, "voiceover/english/queen_antonia_bayle/qey_north/antonia_isle_speech_16.mp3", "", "", 3813230568, 886823992, Player)
AddConversationOption(conversation, "\"If, however...\"", "visage18")
AddConversationOption(conversation, "Put the coin away.", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "\"If this be not the truth, take heed: treachery will not be suffered here.\"")
end

function visage18(Item, Player)
conversation = CreateConversation()
    PlayFlavor(Player, "voiceover/english/queen_antonia_bayle/qey_north/antonia_isle_speech_17.mp3", "", "", 3518095686, 1014640100, Player)
AddConversationOption(conversation, "\"Now enter...\"", "visage19")
AddConversationOption(conversation, "Put the coin away.", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "\"If, however, you are as true and loyal as you seem, then may your life in Qeynos be abundant in blessings.\"")
end

function visage19(Item, Player)
conversation = CreateConversation()
    PlayFlavor(Player, "voiceover/english/queen_antonia_bayle/qey_north/antonia_isle_speech_18.mp3", "", "", 1587099913, 694440967, Player)
AddConversationOption(conversation, "Put the coin away.", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "\"Now enter good traveler, and find your place among us.\"")
end








function CloseConvo(Item,Player)
    CloseItemConversation(Item,Player)
end