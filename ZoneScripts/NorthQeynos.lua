--[[
    Script Name    : ZoneScripts/NorthQeynos.lua
    Script Author  : Dorbin
    Script Date    : 2022.04.25 03:04:09
    Script Purpose : 
                   : 
--]]
function init_zone_script(Zone)

end

function player_entry(Zone, Player)

end


function dawn(Zone)
local Antonia = GetSpawnByLocationID(Zone,379658)
if Antonia ~=nil then
ProbA(Antonia)
end
end

    function ProbA(Zone)

--        if Timer == false then 
--            Timer = true
	PlayFlavor(Antonia, "voiceover/english/queen_antonia_bayle/qey_north/eco_200_statue_queen_antonia_bayle_propaganda_1_a_c81e36af.mp3", "Good people of Qeynos, we gather today in honor of our city.  We citizens have great reason to be proud, for Qeynos has proven its worth through times of struggle and adversity.  It has risen from the chaos and darkness of the Age of Cataclysms to become first among all the cities of Norrath.  Qeynos- city of valor and defender of the meek.  These are not empty words; even those far beyond our borders speak of our accomplishments! Everyone, look around you.  The beautiful towers and spires, the gardens, buildings and bustling market places- we live in a paradise without equal.  It is hard to believe there was once a time when Qeynos lay in ruins, its streets mired.  But our city has returned to life with even greater splendor.", "", 724319904, 1189766476)
  	
    		AddTimer(Antonia, 53000, "PropB",1) 
    		AddTimer(Antonia, 85000, "PropC",1)   
    		AddTimer(Antonia, 147000, "PropD",1)
    		AddTimer(Antonia, 196000,"PropE",1)
            
end

function PropB(Antonia)
local Antonia = GetSpawnByLocationID(Zone,379658)
	PlayFlavor(Antonia, "voiceover/english/queen_antonia_bayle/qey_north/eco_200_statue_queen_antonia_bayle_propaganda_1_b_e5f9dee6.mp3", "Who performed this miracle?  We did.  All of us, by our own hands, guided by our vision and the blessings of the gods.  Qeynos stands as proof in the power of justice, equality, and compassion.  For, as our founding patriarch, Antonius Bayle, would say: If a city will be great, it must first be good!  And our city indeed owes its greatness to the goodness and benevolent ideals we citizens uphold.", "converse", 1818828034, 1870559483)
end   

function PropC(Antonia)
local Antonia = GetSpawnByLocationID(Zone,379658)
	PlayFlavor(Antonia, "voiceover/english/queen_antonia_bayle/qey_north/eco_200_statue_queen_antonia_bayle_propaganda_1_c_1aa755c8.mp3", "In this Age of Destiny, Qeynos blossoms with abundance in both arts and commerce.  Our children are nourished in body, mind, and spirit.  Scholars, merchants, artisans, soldiers- all of us are welcome here; all of us find ample means and opportunity to share our unique gifts.  Our city is a lamp in the darkness, and a clarion call to awaken Norrath from its long nightmare of discord.  Let us remember that people in other lands look to us for hope and guidance.  We are Norrath's shining example of what civilization really and truly means.   But we mustn't fall into complacency and self-satisfaction.  There is yet much to be done.  There are refugees beyond our gates who do not enjoy the freedoms and rights we take for granted.  They scratch out their meager lives in hunger and ignorance.  Some flee persecution and violence; others are tormented by the merciless ravages of want.  We Qeynosians who live in abundance are called to reach out to these refugees, to open our hearts and hands.", " converse_female02", 3038020523, 1696768651)
end   

function PropD(Antonia)
local Antonia = GetSpawnByLocationID(Zone,379658)
	PlayFlavor(Antonia, "voiceover/english/queen_antonia_bayle/qey_north/eco_200_statue_queen_antonia_bayle_propaganda_1_d_54e171d.mp3", "Yes, I am proud to call myself a Qeynosian.  And I am certain that every one of us here is just as proud, just as grateful, and just as eager to share the light of civilization until it shines in every corner of Norrath.   We must be extra vigilant to protect our way of life from the corruption of Freeport, which threatens us night and day.  In Freeport, they mock the ideals we hold dear.  They would make slaves of each and every one of us if they could.  We have all seen examples of their ruthlessness and cruelty, of their total disregard for righteousness, of their deceptive and treacherous ways.  We know of their unabated greed, and their appetite for territory.  How they snap up lands and goods with no thought for the rights of needs of their victims.", "converse_female03", 2019122145, 3355586847)
end   

function PropE(Antonia)
local Antonia = GetSpawnByLocationID(Zone,379658)
    PlayFlavor(Antonia, "voiceover/english/queen_antonia_bayle/qey_north/eco_200_statue_queen_antonia_bayle_propaganda_1_e_8dd02ef3.mp3", "But Freeport shall not prevail!  We Qeynosians know that the destiny of Norrath is like the sun at dawn, like a great light which begins with a spark and illuminates the land.  Qeynos is that spark!  Qeynos will spread its light of civilization until nothing and no one remains in darkness!  And we are the ones called to carry this light.  And so ... everyone ... I beseech thee all to remember that this is indeed the Age Of Destiny.  And we Qeynosians are its children, and its acolytes ... and its greatest hope!", " converse_female04", 4080984009, 3907237860)
end  
