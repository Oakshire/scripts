--[[
    Script Name    : SpawnScripts/QueensColony/VisageoftheQueen.lua
    Script Author  : Zcoretri
    Script Date    : 2015.07.30
    Script Purpose : Visage of the Queen talking statue dialog
                   : 
--]]

function spawn(NPC)
    StartSpeech(NPC) 
end

function StartSpeech(NPC)
    AddTimer(NPC, 1200000, "flamesanimation")
end

function flamesanimation(NPC, Spawn)
    EndSpeech = 1
    PlayAnimation(NPC, 10756)
    AddTimer(NPC, 3000, "visage01")	
end

function visage01(NPC, Spawn)
    EmoteLoop(NPC)
    AddTimer(NPC, 2000, "visage02")	
end

function visage02(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/queen_antonia_bayle/qey_north/antonia_isle_speech_1.mp3", "Good traveler, you have seen much in your journey, and now you seek refuge in our humble City of Qeynos. As ruler and servant of the good people of Qeynos, I, Antonia Bayle, welcome you.", "", 499186274, 1744595600, Spawn)
    AddTimer(NPC, 13500, "visage03")	
end

function visage03(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/queen_antonia_bayle/qey_north/antonia_isle_speech_2.mp3", "Many among you have traveled great distances, enduring hardships and facing terrible dangers.", "", 2366466723, 1207173576, Spawn)
    AddTimer(NPC, 6500, "visage04")	
end

function visage04(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/queen_antonia_bayle/qey_north/antonia_isle_speech_3.mp3", "If you are tired, cold or hungry, if you flee persecution, poverty or injustice, be comforted, there is a place at our hearth for you.", "", 1841028977, 3133868486, Spawn)
    AddTimer(NPC, 9500, "visage05")	
end

function visage05(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/queen_antonia_bayle/qey_north/antonia_isle_speech_4.mp3", "You shall find rest in Qeynos.", "", 2202564065, 871912515, Spawn)
    AddTimer(NPC, 2500, "visage06")	
end

function visage06(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/queen_antonia_bayle/qey_north/antonia_isle_speech_5.mp3", "Our own Qeynos guard pledges its service to your security.", "", 1129117607, 63248962, Spawn)
    AddTimer(NPC, 4600, "visage07")	
end

function visage07(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/queen_antonia_bayle/qey_north/antonia_isle_speech_6.mp3", "Your safety and peace is our sacred trust.", "", 1663362626, 2717555718, Spawn)
    AddTimer(NPC, 4500, "visage08")	
end

function visage08(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/queen_antonia_bayle/qey_north/antonia_isle_speech_7.mp3", "The tribulations of Qeynos during the Age of Cataclysms are legendary -- destruction, plagues, horrors both natural and unnatural...", "", 3755081144, 1816040948, Spawn)
    AddTimer(NPC, 9300, "visage09")	
end

function visage09(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/queen_antonia_bayle/qey_north/antonia_isle_speech_8.mp3", "If Qeynos has endured, it is because of the steadfast loyalty and courage of her people.", "", 1646438592, 3991623974, Spawn)
    AddTimer(NPC, 6600, "visage10")	
end

function visage10(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/queen_antonia_bayle/qey_north/antonia_isle_speech_9.mp3", "Prepare yourself. When you enter the city gates, you accept the challenge of citizenship.", "", 2292019727, 2112049669, Spawn)
    AddTimer(NPC, 6800, "visage11")	
end

function visage11(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/queen_antonia_bayle/qey_north/antonia_isle_speech_10.mp3", "All who yearn to fully participate in the center of Qeynos must first prove themselves.", "", 1463066361, 618547599, Spawn)
    AddTimer(NPC, 6600, "visage12")	
end

function visage12(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/queen_antonia_bayle/qey_north/antonia_isle_speech_11.mp3", "Your loyalty will be tested, for you must earn the right to be called citizen.", "", 3316158990, 3680571955, Spawn)
    AddTimer(NPC, 5300, "visage13")	
end

function visage13(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/queen_antonia_bayle/qey_north/antonia_isle_speech_12.mp3", "Qeynosians are generous to travelers, but harsh with traitors.", "", 2036336595, 3509341224, Spawn)
    AddTimer(NPC, 5000, "visage14")	
end

function visage14(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/queen_antonia_bayle/qey_north/antonia_isle_speech_13.mp3", "No doubt you have heard the boasting of Lucan De'Lere.", "", 2730892750, 1805998546, Spawn)
    AddTimer(NPC, 3000, "visage15")	
end

function visage15(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/queen_antonia_bayle/qey_north/antonia_isle_speech_14.mp3", "I see, however, that his lies have not enticed you into Freeport. Be grateful and thank the gods; you would not find a restful sanctuary there.", "", 1986999100, 3686223802, Spawn)
    AddTimer(NPC, 8800, "visage16")	
end

function visage16(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/queen_antonia_bayle/qey_north/antonia_isle_speech_15.mp3", "I trust that you do not share in Lucan's deceit, and that the well-being of Qeynos and its people is in your heart.", "", 3873638463, 3215411094, Spawn)
    AddTimer(NPC, 7000, "visage17")	
end

function visage17(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/queen_antonia_bayle/qey_north/antonia_isle_speech_16.mp3", "If this be not the truth, take heed: treachery will not be suffered here.", "", 3813230568, 886823992, Spawn)
    AddTimer(NPC, 5000, "visage18")	
end

function visage18(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/queen_antonia_bayle/qey_north/antonia_isle_speech_17.mp3", "If, however, you are as true and loyal as you seem, then may your life in Qeynos be abundant in blessings.", "", 3518095686, 1014640100, Spawn)
    AddTimer(NPC, 8500, "visage19")	
end

function visage19(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/queen_antonia_bayle/qey_north/antonia_isle_speech_18.mp3", "Now enter good traveler, and find your place among us.", "", 1587099913, 694440967, Spawn)
    AddTimer(NPC, 1000, "endspeech")	
end

function endspeech(NPC)
    EndSpeech = 2
end

function EmoteCheck(NPC)
    if EndSpeech == 1 then
        EmoteLoop(NPC)
    else
	PlayAnimation(NPC, 13042)
        AddTimer(NPC, 1200000, "flamesanimation")
    end
end

function EmoteLoop(NPC)
    math.randomseed(os.time())
    local choice = math.random(1,12)

    if choice == 1 then
        PlayAnimation(NPC, 13042)
        AddTimer(NPC, 5200, "Idle")	
    elseif choice == 2 then
	PlayAnimation(NPC, 13043)
	AddTimer(NPC, 4400, "Idle")
    elseif choice == 3 then
	PlayAnimation(NPC, 13044)
	AddTimer(NPC, 6950, "Idle")
    elseif choice == 4 then
	PlayAnimation(NPC, 13045)
        AddTimer(NPC, 5300, "Idle")
    elseif choice == 5 then
	PlayAnimation(NPC, 13046)
        AddTimer(NPC, 3900, "Idle")
    elseif choice == 6 then
	PlayAnimation(NPC, 13047)
	AddTimer(NPC, 4900, "Idle")
    elseif choice == 7 then
	PlayAnimation(NPC, 13048)
	AddTimer(NPC, 4500, "Idle")
    elseif choice == 8 then
	PlayAnimation(NPC, 13049)
	AddTimer(NPC, 3700, "Idle")
    elseif choice == 9 then
	PlayAnimation(NPC, 13050)
        AddTimer(NPC, 3200, "Idle")
    elseif choice == 10 then
	PlayAnimation(NPC, 13051)
        AddTimer(NPC, 4700, "Idle")
    elseif choice == 11 then
	PlayAnimation(NPC, 13052)
	AddTimer(NPC, 3500, "Idle")
    else
	PlayAnimation(NPC, 13053)
        AddTimer(NPC, 3200, "Idle")
    end
end

function Idle(NPC)
    PlayAnimation(NPC, 13042)    
    EmoteCheck(NPC)
end







--[[
function speech1(NPC, Spawn)
    SpawnSet(NPC, "mood_state", "13046")	-- Give her serious face!
    SpawnSet(NPC, "action_state", "10756")	-- Start waving arms about wildly

    PlayFlavor(NPC, "voiceover/english/queen_antonia_bayle/qey_north/eco_200_statue_queen_antonia_bayle_propaganda_1_b_e5f9dee6.mp3", "Who performed this miracle?  We did.  All of us, by our own hands, guided by our vision and the blessings of the gods.  Qeynos stands as proof in the power of justice, equality, and compassion.  For, as our founding patriarch, Antonius Bayle, would say: If a city will be great, it must first be good!  And our city indeed owes its greatness to the goodness and benevolent ideals we citizens uphold.", "", 1818828034, 1870559483)

    AddTimer(NPC, 30000, "speech2")			-- for 30 seconds, then to next speech cycle

end

function speech2(NPC, Spawn)
    SpawnSet(NPC, "mood_state", "13046")	-- Give her serious face!
    SpawnSet(NPC, "action_state", "10756")	-- Start waving arms about wildly

    PlayFlavor(NPC, "voiceover/english/queen_antonia_bayle/qey_north/eco_200_statue_queen_antonia_bayle_propaganda_1_c_1aa755c8.mp3", "In this Age of Destiny, Qeynos blossoms with abundance in both arts and commerce.  Our children are nourished in body, mind, and spirit.  Scholars, merchants, artisans, soldiers- all of us are welcome here; all of us find ample means and opportunity to share our unique gifts.  Our city is a lamp in the darkness, and a clarion call to awaken Norrath from its long nightmare of discord.  Let us remember that people in other lands look to us for hope and guidance.  We are Norrath's shining example of what civilization really and truly means.   But we mustn't fall into complacency and self-satisfaction.  There is yet much to be done.  There are refugees beyond our gates who do not enjoy the freedoms and rights we take for granted.  They scratch out their meager lives in hunger and ignorance.  Some flee persecution and violence; others are tormented by the merciless ravages of want.  We Qeynosians who live in abundance are called to reach out to these refugees, to open our hearts and hands.", "", 3038020523, 1696768651)

    AddTimer(NPC, 75000, "speech3")			-- for 30 seconds, then to next speech cycle

end

function speech3(NPC, Spawn)
    SpawnSet(NPC, "mood_state", "13046")	-- Give her serious face!
    SpawnSet(NPC, "action_state", "10756")	-- Start waving arms about wildly

    PlayFlavor(NPC, "voiceover/english/queen_antonia_bayle/qey_north/eco_200_statue_queen_antonia_bayle_propaganda_1_d_54e171d.mp3", "Yes, I am proud to call myself a Qeynosian.  And I am certain that every one of us here is just as proud, just as grateful, and just as eager to share the light of civilization until it shines in every corner of Norrath.   We must be extra vigilant to protect our way of life from the corruption of Freeport, which threatens us night and day.  In Freeport, they mock the ideals we hold dear.  They would make slaves of each and every one of us if they could.  We have all seen examples of their ruthlessness and cruelty, of their total disregard for righteousness, of their deceptive and treacherous ways.  We know of their unabated greed, and their appetite for territory.  How they snap up lands and goods with no thought for the rights of needs of their victims.", "", 2019122145, 3355586847)

    AddTimer(NPC, 60000, "speech4")			-- for 30 seconds, then to next speech cycle

end

function speech4(NPC, Spawn)
    SpawnSet(NPC, "mood_state", "13046")	-- Give her serious face!
    SpawnSet(NPC, "action_state", "10756")	-- Start waving arms about wildly

    PlayFlavor(NPC, "voiceover/english/queen_antonia_bayle/qey_north/eco_200_statue_queen_antonia_bayle_propaganda_1_e_8dd02ef3.mp3", "But Freeport shall not prevail!  We Qeynosians know that the destiny of Norrath is like the sun at dawn, like a great light which begins with a spark and illuminates the land.  Qeynos is that spark!  Qeynos will spread its light of civilization until nothing and no one remains in darkness!  And we are the ones called to carry this light.  And so ... everyone ... I beseech thee all to remember that this is indeed the Age Of Destiny.  And we Qeynosians are its children, and its acolytes ... and its greatest hope!", "", 4080984009, 3907237860)

    AddTimer(NPC, 30000, "stop_speech")		-- for 30 seconds, then to next speech cycle

end

function stop_speech(NPC) 
    SpawnSet(NPC, "mood_state", "0") 		-- Give her stone face!
    SpawnSet(NPC, "action_state", "0")		-- Stop her waving
	
    AddTimer(NPC, 1200000, "speech1")
end 
--]]