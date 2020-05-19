--[[
    Script Name    : SpawnScripts/QueensColony/VisageoftheQueen.lua
    Script Author  : Zcoretri
    Script Date    : 2015.07.30
    Script Purpose : Visage of the Queen talking statue dialog
                   : 
--]]

function spawn(NPC)
    Start(NPC) 
    --SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function Start(NPC)
    AddTimer(NPC, 1200000, "speech1")
end

--[[function InRange(NPC, Spawn)
    speech1(NPC)
end

function LeaveRange(NPC, Spawn)
    stop_speech(NPC)
end--]]

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