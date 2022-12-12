--[[
	Script Name		: SpawnScripts/NorthQeynos/QueenAntoniaBayle.lua
	Script Purpose	: Queen Antonia Bayle
	Script Author	: Dorbin
	Script Date		: 2022.04.25
	Script Notes	: Queen Antonia Statue Script ***TO BE USED ON ALL CITY ANTONIA STATUES in conjunction with zone scripts

--]]

--Good citizens of Qeynos, many brave souls have undertaken the daunting task of expanding our horizons through exploration.  Those of you who helped discover the Feerrott faced dangers of an unearthly and terrifying nature.  Qeynos is enriched by your courageous deeds.  We bow to you in gratitude. However, we have received alarming reports about that most haunted of places in the Feerrott- the Temple of Cazic Thule.  How it appeared in Norrath is yet a mystery.

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function PropB(NPC)
	PlayFlavor(NPC, "voiceover/english/queen_antonia_bayle/qey_north/eco_200_statue_queen_antonia_bayle_propaganda_1_b_e5f9dee6.mp3", "Who performed this miracle?  We did.  All of us, by our own hands, guided by our vision and the blessings of the gods.  Qeynos stands as proof in the power of justice, equality, and compassion.  For, as our founding patriarch, Antonius Bayle, would say: If a city will be great, it must first be good!  And our city indeed owes its greatness to the goodness and benevolent ideals we citizens uphold.", "converse", 1818828034, 1870559483)
end   

function PropC(NPC)
    EndSpeech = true
	PlayFlavor(NPC, "voiceover/english/queen_antonia_bayle/qey_north/eco_200_statue_queen_antonia_bayle_propaganda_1_c_1aa755c8.mp3", "In this Age of Destiny, Qeynos blossoms with abundance in both arts and commerce.  Our children are nourished in body, mind, and spirit.  Scholars, merchants, artisans, soldiers- all of us are welcome here; all of us find ample means and opportunity to share our unique gifts.  Our city is a lamp in the darkness, and a clarion call to awaken Norrath from its long nightmare of discord.  Let us remember that people in other lands look to us for hope and guidance.  We are Norrath's shining example of what civilization really and truly means.   But we mustn't fall into complacency and self-satisfaction.  There is yet much to be done.  There are refugees beyond our gates who do not enjoy the freedoms and rights we take for granted.  They scratch out their meager lives in hunger and ignorance.  Some flee persecution and violence; others are tormented by the merciless ravages of want.  We Qeynosians who live in abundance are called to reach out to these refugees, to open our hearts and hands.", " converse_female02", 3038020523, 1696768651)
end   

function PropD(NPC)
    EndSpeech = true
	PlayFlavor(NPC, "voiceover/english/queen_antonia_bayle/qey_north/eco_200_statue_queen_antonia_bayle_propaganda_1_d_54e171d.mp3", "Yes, I am proud to call myself a Qeynosian.  And I am certain that every one of us here is just as proud, just as grateful, and just as eager to share the light of civilization until it shines in every corner of Norrath.   We must be extra vigilant to protect our way of life from the corruption of Freeport, which threatens us night and day.  In Freeport, they mock the ideals we hold dear.  They would make slaves of each and every one of us if they could.  We have all seen examples of their ruthlessness and cruelty, of their total disregard for righteousness, of their deceptive and treacherous ways.  We know of their unabated greed, and their appetite for territory.  How they snap up lands and goods with no thought for the rights of needs of their victims.", "converse_female03", 2019122145, 3355586847)
end   

function PropE(NPC)
    EndSpeech = true
    PlayFlavor(NPC, "voiceover/english/queen_antonia_bayle/qey_north/eco_200_statue_queen_antonia_bayle_propaganda_1_e_8dd02ef3.mp3", "But Freeport shall not prevail!  We Qeynosians know that the destiny of Norrath is like the sun at dawn, like a great light which begins with a spark and illuminates the land.  Qeynos is that spark!  Qeynos will spread its light of civilization until nothing and no one remains in darkness!  And we are the ones called to carry this light.  And so ... everyone ... I beseech thee all to remember that this is indeed the Age Of Destiny.  And we Qeynosians are its children, and its acolytes ... and its greatest hope!", " converse_female04", 4080984009, 3907237860)
end  

function NewDawnB(NPC)
    EndSpeech = true
		PlayFlavor(NPC, "voiceover/english/queen_antonia_bayle/qey_north/eco_200_statue_queen_antonia_bayle_speech_newdawn_b_694279fc.mp3", "And we are all a part of that light, that shining beacon that illuminates Norrath and awakens her from her dark slumber.  As Norrath gently turns on her axis and revolves around the sun, each of us becomes a living light that guides all peoples into the Age of Destiny.  We are like the stars in the night sky.     For Qeynos must lead the way.  The ideals which we have championed are the one true hope for peace and prosperity in this world.  It is up to Qeynos to show all of Norrath what is possible when truth and justice, equality and mercy are enthroned.  I am merely a handmaid to the real rulers: our ideals.  These are what we look to for guidance.", "", 982014123, 829335521)
end

function NewDawnC(NPC)
    EndSpeech = true
		PlayFlavor(NPC, "voiceover/english/queen_antonia_bayle/qey_north/eco_200_statue_queen_antonia_bayle_speech_newdawn_c_4465cb71.mp3", "And words cannot express the gratitude I feel ... to be entrusted with this august responsibility.  To stand here before you and before all of Qeynos fills me with great pride.  I know that we will seize every opportunity, this new year, to advance our cause and spread liberty throughout the land! We shall not dwell on failures of times past.  Instead we will live for the future.  Each of us will strive for the common good, and for the highest ambitions to which we can aspire!  This is the meaning of New Dawn Day!", "", 3866349527, 2161431192)
end

function FreeportB(NPC)
    EndSpeech = true
		PlayFlavor(NPC, "voiceover/english/queen_antonia_bayle/qey_north/eco_200_statue_queen_antonia_bayle_denouncement_freeport_3_b_f1948507.mp3", "As you know, Lucan has misled his subjects to see him as their savior.  No ... their god.  He has enthroned himself in the gods' place.  He has corrupted the history of Freeport, claiming every victory as his own.  His subjects praise him for the rising and setting of the sun.  They think he alone holds back the remains of the moon!  The truth, however, is too horrible to behold.  Lucan ... Lucan D'Lere ... does not even belong among the living.  His mortal life was forfeit hundreds of years ago.  The monster we see is a corpse, a skeleton with a few shreds of flesh that long for the grave-unnaturally sustained by dark magic.  ", "", 2587904628, 1366269418)
end

function FreeportC(NPC)
    EndSpeech = true
		PlayFlavor(NPC, "voiceover/english/queen_antonia_bayle/qey_north/eco_200_statue_queen_antonia_bayle_denouncement_freeport_3_c_6283e942.mp3", "This is why Lucan hides in that floating sarcophagus called the Twilight Citadel.  His battle armor is really a burial shroud.  Any humanity he once possessed has long since passed over into the land of shades.   So be on your guard, but take heart.  We Qeynosians have more courage than the beaten and terrified subjects of Freeport.  We are not afraid of the dead, and will never cower before a sack of bones.  Life will triumph in Qeynos, and the burial grounds of Norrath will one day claim their own.", "", 1432372035, 3833716814)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,9)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/queen_antonia_bayle/qey_north/eco_200_statue_queen_antonia_bayle_generic_578f5fd1.mp3", "We must remain united.", "", 2546826310, 3168168943)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/queen_antonia_bayle/qey_north/eco_200_statue_queen_antonia_bayle_generic_3f750d3f.mp3", "Good citizen, thank you for your loyalty to Qeynos in her time of need.", "", 3804322354, 768684401)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/queen_antonia_bayle/qey_north/eco_200_statue_queen_antonia_bayle_generic_3231dd68.mp3", "Only time will tell if we are destined to prevail.", "", 4232919472, 1608431927)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/queen_antonia_bayle/qey_north/eco_200_statue_queen_antonia_bayle_generic_77a2c0db.mp3", "We owe our success to the ideals we uphold.", "", 1722692490, 2388238708)
	elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/queen_antonia_bayle/qey_north/eco_200_statue_queen_antonia_bayle_generic_cbcafcc7.mp3", "Remember ... all things shall pass.", "", 3101211730, 2443276883)
	elseif choice == 6 then
		PlayFlavor(NPC, "voiceover/english/queen_antonia_bayle/qey_north/eco_200_statue_queen_antonia_bayle_generic_776921e3.mp3", "Do not be afraid.  Believe in yourselves, and believe in Qeynos.", "", 956298383, 2870821091)
	elseif choice == 7 then
		PlayFlavor(NPC, "voiceover/english/queen_antonia_bayle/qey_north/eco_200_statue_queen_antonia_bayle_generic_6626b0a8.mp3", "I shall always be proud to call myself a Qeynosian.", "", 320835052, 345885614)
	elseif choice == 8 then
		PlayFlavor(NPC, "voiceover/english/queen_antonia_bayle/qey_north/eco_200_statue_queen_antonia_bayle_generic_82b8bc23.mp3", "No challenge is too great for the brave and dedicated.", "", 1245844757, 2085854167)
    elseif choice == 9 then
    	PlayFlavor(NPC, "voiceover/english/queen_antonia_bayle/qey_north/eco_200_statue_queen_antonia_bayle_generic_82b8bc23.mp3", "No challenge is too great for the brave and dedicated.", "", 1245844757, 2085854167)

    end
end

-- STATUE ANIMATION

local EndSpeech = true

function visage01(NPC, Spawn)
    EndSpeech = false
    EmoteLoop(NPC)
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

function EndLoop(NPC)
    EndSpeech = true
end

function EmoteCheck(NPC)
    if EndSpeech == false then
        EmoteLoop(NPC)
    else
	    PlayAnimation(NPC, 13042)
    end
end