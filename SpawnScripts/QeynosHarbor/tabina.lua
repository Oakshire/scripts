--[[
	Script Name		:	soothsayertabina.lua
	Script Purpose	:	Waypoint Path for soothsayertabina.lua
	Script Author	:	Devn00b
	Script Date		:	04/09/2020 01:54:12 AM
	Script Notes	:	Locations collected from Live
	Note: Added class specific callout - Dorbin 4/15/2022
--]]
local FIGHTER = 1
local WARRIOR =2
local GUARDIAN= 3 
local BERSERKER = 4 
local BRAWLER = 5 
local MONK = 6 
local BRUISER= 7 
local CRUSADER = 8 
local SHADOWKNIGHT = 9 
local PALADIN = 10 

local PRIEST = 11 
local CLERIC = 12 
local TEMPLAR = 13 
local INQUISITOR = 14 
local DRUID = 15 
local WARDEN = 16 
local FURY = 17 
local SHAMAN = 18 
local MYSTIC = 19 
local DEFILER = 20 

local MAGE = 21 
local SORCERER = 22 
local WIZARD = 23 
local WARLOCK = 24 
local ENCHANTER = 25 
local ILLUSIONIST = 26 
local COERCER = 27 
local SUMMONER = 28 
local CONJUROR = 29 
local NECROMANCER = 30 

local SCOUT = 31 
local ROGUE = 32 
local SWASHBUCKLER = 33 
local BRIGAND = 34 
local BARD = 35 
local TROUBADOR = 36 
local DIRGE = 37 
local PREDATOR = 38 
local RANGER = 39 
local ASSASSIN = 40 
local ANIMALIST = 41 
local BEASTLORD = 42 
local SHAPER = 43 
local CHANNELER = 44 

function spawn(NPC)
SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange")
waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    Seer(NPC,Spawn)	
end

function respawn(NPC)
	spawn(NPC)
end


function InRange(NPC, Spawn) --Quest Callout
    if math.random(1, 100) <= 25 then
	FaceTarget(NPC, Spawn)        
    SeerShout(NPC, Spawn)    
    end
end

function Seer(NPC,Spawn)	
    choice = math.random(1,2)
    FaceTarget(NPC, Spawn) 
    if choice ==1 then
    PlayFlavor(NPC, "","", "ponder", 0, 0, Spawn)
        else
   
    if GetClass(Spawn)==SCOUT or GetClass(Spawn)==ROGUE or GetClass(Spawn)==SWASHBUCKLER or GetClass(Spawn)==BRIGAND or GetClass(Spawn)==BARD or GetClass(Spawn)==TROUBADOR or GetClass(Spawn)==DIRGE or GetClass(Spawn)==PREDATOR or GetClass(Spawn)==RANGER or GetClass(Spawn)==ASSASSIN or GetClass(Spawn)==ANIMALIST or GetClass(Spawn)==BEASTLORD or GetClass(Spawn)==SHAPER or GetClass(Spawn)==CHANNELER then
    PlayFlavor(NPC, "voiceover/english/human_eco_good_seer/ft/eco/good/human_eco_good_seer_scout_gf_a250f41f.mp3","Stealth, guile, and brovado shall follow you on your path to greatness.", "orate", 3335989969, 3601217765, Spawn)
    
    elseif GetClass(Spawn)==MAGE or GetClass(Spawn)==SORCERER or GetClass(Spawn)==WIZARD or GetClass(Spawn)==WARLOCK or GetClass(Spawn)==ENCHANTER or GetClass(Spawn)==ILLUSIONIST or GetClass(Spawn)==COERCER or GetClass(Spawn)==SUMMONER or GetClass(Spawn)==CONJUROR or GetClass(Spawn)==NECROMANCER then
    PlayFlavor(NPC, "voiceover/english/human_eco_good_seer/ft/eco/good/human_eco_good_seer_mage_gf_f18445ae.mp3","Clearly your intellect is your best asset.  The world shall marvel at the wonders you control.", "orate", 2143349270, 291509869, Spawn)

    elseif GetClass(Spawn)==CLERIC or GetClass(Spawn)==TEMPLAR or GetClass(Spawn)==INQUISITOR or GetClass(Spawn)==DRUID or GetClass(Spawn)==WARDEN or GetClass(Spawn)==FURY or GetClass(Spawn)==SHAMAN or GetClass(Spawn)==MYSTIC or GetClass(Spawn)==DEFILER or GetClass(Spawn)==PRIEST then
    PlayFlavor(NPC, "voiceover/english/human_eco_good_seer/ft/eco/good/human_eco_good_seer_priest_gf_5c80506d.mp3","Your spirit is strong, as is your faith. You shall move more than mountains, you shall move souls.", "orate", 1603654197, 361421551, Spawn)

    elseif GetClass(Spawn)==FIGHTER or GetClass(Spawn)==WARRIOR or GetClass(Spawn)==GUARDIAN or GetClass(Spawn)==BERSERKER or GetClass(Spawn)==BRAWLER or GetClass(Spawn)==MONK or GetClass(Spawn)==BRUISER or GetClass(Spawn)==CRUSADER or GetClass(Spawn)==SHADOWKNIGHT or GetClass(Spawn)==PALADIN then
    PlayFlavor(NPC, "voiceover/english/human_eco_good_seer/ft/eco/good/human_eco_good_seer_fighter_gf_544e4a58.mp3","Epic battles await your future, but the strength of your arm shall tame them all!", "orate", 2750782728, 2274979632, Spawn)
        end
    end
end

function SeerShout(NPC,Spawn)	
    if GetClass(Spawn)==SCOUT or GetClass(Spawn)==ROGUE or GetClass(Spawn)==SWASHBUCKLER or GetClass(Spawn)==BRIGAND or GetClass(Spawn)==BARD or GetClass(Spawn)==TROUBADOR or GetClass(Spawn)==DIRGE or GetClass(Spawn)==PREDATOR or GetClass(Spawn)==RANGER or GetClass(Spawn)==ASSASSIN or GetClass(Spawn)==ANIMALIST or GetClass(Spawn)==BEASTLORD or GetClass(Spawn)==SHAPER or GetClass(Spawn)==CHANNELER then
    PlayFlavor(NPC, "voiceover/english/human_eco_good_seer/ft/eco/good/human_eco_good_seer_scout_gf_a250f41f.mp3","Stealth, guile and brovado shall follow you on your path to greatness.", "orate", 3335989969, 3601217765, Spawn)
    
    elseif GetClass(Spawn)==MAGE or GetClass(Spawn)==SORCERER or GetClass(Spawn)==WIZARD or GetClass(Spawn)==WARLOCK or GetClass(Spawn)==ENCHANTER or GetClass(Spawn)==ILLUSIONIST or GetClass(Spawn)==COERCER or GetClass(Spawn)==SUMMONER or GetClass(Spawn)==CONJUROR or GetClass(Spawn)==NECROMANCER then
    PlayFlavor(NPC, "voiceover/english/human_eco_good_seer/ft/eco/good/human_eco_good_seer_mage_gf_f18445ae.mp3","Clearly your intellect is your best asset.  The world shall marvel at the wonders you control.", "orate", 2143349270, 291509869)

    elseif GetClass(Spawn)==CLERIC or GetClass(Spawn)==TEMPLAR or GetClass(Spawn)==INQUISITOR or GetClass(Spawn)==DRUID or GetClass(Spawn)==WARDEN or GetClass(Spawn)==FURY or GetClass(Spawn)==SHAMAN or GetClass(Spawn)==MYSTIC or GetClass(Spawn)==DEFILER or GetClass(Spawn)==PRIEST then
    PlayFlavor(NPC, "voiceover/english/human_eco_good_seer/ft/eco/good/human_eco_good_seer_priest_gf_5c80506d.mp3","Your spirit is strong, as is your faith. You shall move more than mountains, you shall move souls.", "orate", 1603654197, 361421551)

    elseif GetClass(Spawn)==FIGHTER or GetClass(Spawn)==WARRIOR or GetClass(Spawn)==GUARDIAN or GetClass(Spawn)==BERSERKER or GetClass(Spawn)==BRAWLER or GetClass(Spawn)==MONK or GetClass(Spawn)==BRUISER or GetClass(Spawn)==CRUSADER or GetClass(Spawn)==SHADOWKNIGHT or GetClass(Spawn)==PALADIN then
    PlayFlavor(NPC, "voiceover/english/human_eco_good_seer/ft/eco/good/human_eco_good_seer_fighter_gf_544e4a58.mp3","Epic battles await your future, but the strength of your arm shall tame them all!", "orate", 2750782728, 2274979632)

    end
end



function respawn(NPC)
	spawn(NPC)
	end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 797.49, -23.26, 98.44, 2, 30)
	MovementLoopAddLocation(NPC, 798.15, -23.26, 107.18, 2, 20)
	MovementLoopAddLocation(NPC, 805.71, -23.32, 107.4, 2, 0)
	MovementLoopAddLocation(NPC, 807.27, -23.33, 99.33, 2, 0)
	MovementLoopAddLocation(NPC, 819.55, -23.34, 64.6, 2, 0)
	MovementLoopAddLocation(NPC, 814.05, -23.27, 61.7, 2, 0)
	MovementLoopAddLocation(NPC, 809.61, -23.27, 62.88, 2, 0)
	MovementLoopAddLocation(NPC, 808.99, -23.27, 63.88, 2, 0)
	MovementLoopAddLocation(NPC, 809.29, -23.24, 66.71, 2, 0)
	MovementLoopAddLocation(NPC, 806.88, -23.27, 74, 2, 0)
	MovementLoopAddLocation(NPC, 798.86, -20.27, 69.6, 2, 0)
	MovementLoopAddLocation(NPC, 803.77, -17.27, 60.15, 2, 0)
	MovementLoopAddLocation(NPC, 809.55, -17.27, 51.81, 2, 0)
	MovementLoopAddLocation(NPC, 803.01, -17.27, 62.37, 2, 0)
	MovementLoopAddLocation(NPC, 798.64, -20.27, 68.82, 2, 0)
	MovementLoopAddLocation(NPC, 799.61, -20.27, 69.98, 2, 0)
	MovementLoopAddLocation(NPC, 806.66, -23.27, 73.81, 2, 0)
	MovementLoopAddLocation(NPC, 809.86, -23.24, 67.32, 2, 0)
	MovementLoopAddLocation(NPC, 813.33, -23.27, 65.58, 2, 0)
	MovementLoopAddLocation(NPC, 815.09, -23.27, 62.05, 2, 0)
	MovementLoopAddLocation(NPC, 820.09, -23.33, 64.4, 2, 0)
	MovementLoopAddLocation(NPC, 831.65, -23.33, 43.01, 2, 0)
	MovementLoopAddLocation(NPC, 835.95, -23.31, 41.23, 2, 0)
	MovementLoopAddLocation(NPC, 856.03, -25.25, 38.54, 2, 0)
	MovementLoopAddLocation(NPC, 860.98, -25.43, 37.91, 2, 0)
	MovementLoopAddLocation(NPC, 861.98, -25.43, 24.43, 2, 0)
	MovementLoopAddLocation(NPC, 848.36, -25.47, 14.77, 2, 0)
	MovementLoopAddLocation(NPC, 832.3, -25.43, -11.42, 2, 0)
	MovementLoopAddLocation(NPC, 835.61, -25.43, -23.7, 2, 0)
	MovementLoopAddLocation(NPC, 867.36, -25.46, -33.22, 2, 0)
	MovementLoopAddLocation(NPC, 875.66, -25.47, -32.07, 2, 0)
	MovementLoopAddLocation(NPC, 882.76, -25.46, -29.24, 2, 0)
	MovementLoopAddLocation(NPC, 897.46, -25.46, -19.43, 2, 0)
	MovementLoopAddLocation(NPC, 889.44, -25.35, -46.95, 2, 0)
	MovementLoopAddLocation(NPC, 882.31, -25.45, -54.72, 2, 0)
	MovementLoopAddLocation(NPC, 877.78, -25.49, -56.75, 2, 0)
	MovementLoopAddLocation(NPC, 874.21, -25.46, -58.26, 2, 0)
	MovementLoopAddLocation(NPC, 841.61, -25.46, -58.23, 2, 0)
	MovementLoopAddLocation(NPC, 812.05, -20.4, -58.23, 2, 0)
	MovementLoopAddLocation(NPC, 805.57, -20.4, -58.35, 2, 0)
	MovementLoopAddLocation(NPC, 791.84, -21.11, -57.67, 2, 0)
	MovementLoopAddLocation(NPC, 775.18, -20.64, -24.61, 2, 30)
	MovementLoopAddLocation(NPC, 791.84, -21.11, -57.67, 2, 0)
	MovementLoopAddLocation(NPC, 805.57, -20.4, -58.35, 2, 0)
	MovementLoopAddLocation(NPC, 812.05, -20.4, -58.23, 2, 0)
	MovementLoopAddLocation(NPC, 841.61, -25.46, -58.23, 2, 0)
	MovementLoopAddLocation(NPC, 874.21, -25.46, -58.26, 2, 0)
	MovementLoopAddLocation(NPC, 877.78, -25.49, -56.75, 2, 0)
	MovementLoopAddLocation(NPC, 882.31, -25.45, -54.72, 2, 0)
	MovementLoopAddLocation(NPC, 889.44, -25.35, -46.95, 2, 0)
	MovementLoopAddLocation(NPC, 897.46, -25.46, -19.43, 2, 0)
	MovementLoopAddLocation(NPC, 882.76, -25.46, -29.24, 2, 0)
	MovementLoopAddLocation(NPC, 875.66, -25.47, -32.07, 2, 0)
	MovementLoopAddLocation(NPC, 867.36, -25.46, -33.22, 2, 0)
	MovementLoopAddLocation(NPC, 835.61, -25.43, -23.7, 2, 0)
	MovementLoopAddLocation(NPC, 832.3, -25.43, -11.42, 2, 0)
	MovementLoopAddLocation(NPC, 848.36, -25.47, 14.77, 2, 0)
	MovementLoopAddLocation(NPC, 861.98, -25.43, 24.43, 2, 0)
	MovementLoopAddLocation(NPC, 860.98, -25.43, 37.91, 2, 0)
	MovementLoopAddLocation(NPC, 856.03, -25.25, 38.54, 2, 0)
	MovementLoopAddLocation(NPC, 835.95, -23.31, 41.23, 2, 0)
	MovementLoopAddLocation(NPC, 831.65, -23.33, 43.01, 2, 0)
	MovementLoopAddLocation(NPC, 820.09, -23.33, 64.4, 2, 0)
	MovementLoopAddLocation(NPC, 815.09, -23.27, 62.05, 2, 0)
	MovementLoopAddLocation(NPC, 813.33, -23.27, 65.58, 2, 0)
	MovementLoopAddLocation(NPC, 809.86, -23.24, 67.32, 2, 0)
	MovementLoopAddLocation(NPC, 806.66, -23.27, 73.81, 2, 0)
	MovementLoopAddLocation(NPC, 799.61, -20.27, 69.98, 2, 0)
	MovementLoopAddLocation(NPC, 798.64, -20.27, 68.82, 2, 0)
	MovementLoopAddLocation(NPC, 803.01, -17.27, 62.37, 2, 0)
	MovementLoopAddLocation(NPC, 809.55, -17.27, 51.81, 2, 0)
	MovementLoopAddLocation(NPC, 803.77, -17.27, 60.15, 2, 0)
	MovementLoopAddLocation(NPC, 798.86, -20.27, 69.6, 2, 0)
	MovementLoopAddLocation(NPC, 806.88, -23.27, 74, 2, 0)
	MovementLoopAddLocation(NPC, 809.29, -23.24, 66.71, 2, 0)
	MovementLoopAddLocation(NPC, 808.99, -23.27, 63.88, 2, 0)
	MovementLoopAddLocation(NPC, 809.61, -23.27, 62.88, 2, 0)
	MovementLoopAddLocation(NPC, 814.05, -23.27, 61.7, 2, 0)
	MovementLoopAddLocation(NPC, 819.55, -23.34, 64.6, 2, 0)
	MovementLoopAddLocation(NPC, 807.27, -23.33, 99.33, 2, 0)
	MovementLoopAddLocation(NPC, 805.71, -23.32, 107.4, 2, 0)
	MovementLoopAddLocation(NPC, 798.15, -23.26, 107.18, 2, 20)
	MovementLoopAddLocation(NPC, 797.49, -23.26, 98.44, 2, 30)
end




