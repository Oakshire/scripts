--[[
	Script Name		:	soothsayertabina.lua
	Script Purpose	:	Waypoint Path for soothsayertabina.lua
	Script Author	:	Dorbin
	Script Date		:	2022.06.11
	Script Notes	:	
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

local CalloutTimeCheck = false                                                -- used to delay between callout uses


function InRange(NPC, Spawn) --Quest Callout
	if CalloutTimeCheck == false then
    if math.random(1, 100) <= 20 then
        CalloutTimeCheck = true
	    FaceTarget(NPC, Spawn)        
        SeerShout(NPC, Spawn)    
		AddTimer(NPC,50000,"ResetCalloutTimer")                        
    end
end
end

function ResetCalloutTimer(NPC)                                               -- resets callout timer after use
   CalloutTimeCheck = false 
end

function Seer(NPC,Spawn)	
    choice = math.random(1,2)
    FaceTarget(NPC, Spawn) 
    if choice ==1 then
    PlayFlavor(NPC, "","", "ponder", 0, 0, Spawn)
        else
   
    if GetClass(Spawn)==SCOUT or GetClass(Spawn)==ROGUE or GetClass(Spawn)==SWASHBUCKLER or GetClass(Spawn)==BRIGAND or GetClass(Spawn)==BARD or GetClass(Spawn)==TROUBADOR or GetClass(Spawn)==DIRGE or GetClass(Spawn)==PREDATOR or GetClass(Spawn)==RANGER or GetClass(Spawn)==ASSASSIN or GetClass(Spawn)==ANIMALIST or GetClass(Spawn)==BEASTLORD then
    PlayFlavor(NPC, "voiceover/english/human_eco_good_seer/ft/eco/good/human_eco_good_seer_scout_gf_a250f41f.mp3","Stealth, guile, and brovado shall follow you on your path to greatness.", "orate", 3335989969, 3601217765, Spawn)
    
    elseif GetClass(Spawn)==MAGE or GetClass(Spawn)==SORCERER or GetClass(Spawn)==WIZARD or GetClass(Spawn)==WARLOCK or GetClass(Spawn)==ENCHANTER or GetClass(Spawn)==ILLUSIONIST or GetClass(Spawn)==COERCER or GetClass(Spawn)==SUMMONER or GetClass(Spawn)==CONJUROR or GetClass(Spawn)==NECROMANCER then
    PlayFlavor(NPC, "voiceover/english/human_eco_good_seer/ft/eco/good/human_eco_good_seer_mage_gf_f18445ae.mp3","Clearly your intellect is your best asset.  The world shall marvel at the wonders you control.", "orate", 2143349270, 291509869, Spawn)

    elseif GetClass(Spawn)==CLERIC or GetClass(Spawn)==TEMPLAR or GetClass(Spawn)==INQUISITOR or GetClass(Spawn)==DRUID or GetClass(Spawn)==WARDEN or GetClass(Spawn)==FURY or GetClass(Spawn)==SHAMAN or GetClass(Spawn)==MYSTIC or GetClass(Spawn)==DEFILER or GetClass(Spawn)==PRIEST or GetClass(Spawn)==SHAPER or GetClass(Spawn)==CHANNELER then
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
	MovementLoopAddLocation(NPC, 909.78, -25.44, 1.58, 2, 0)
	MovementLoopAddLocation(NPC, 906.81, -25.43, 13.63, 2, 0)
	MovementLoopAddLocation(NPC, 912.98, -25.52, 30.67, 2, 20)
	MovementLoopAddLocation(NPC, 899.02, -25.43, 36.85, 2, 15)
	MovementLoopAddLocation(NPC, 893.48, -25.37, 42.47, 2, 0)
	MovementLoopAddLocation(NPC, 870.99, -25.37, 42.15, 2, 0)
	MovementLoopAddLocation(NPC, 863.96, -25.44, 30.1, 2, 0)
	MovementLoopAddLocation(NPC, 856.98, -25.47, 22.35, 2, 0)
	MovementLoopAddLocation(NPC, 845.96, -25.47, 12.86, 2, 0)
	MovementLoopAddLocation(NPC, 837.99, -25.48, -2.42, 2, 0)
	MovementLoopAddLocation(NPC, 825.78, -25.47, -7.46, 2, 0)
	MovementLoopAddLocation(NPC, 824.38, -25.43, -11.88, 2, 15)
	MovementLoopAddLocation(NPC, 821.3, -25.46, -13.08, 2, 0)
	MovementLoopAddLocation(NPC, 835.61, -25.43, -15.7, 2, 15)
	MovementLoopAddLocation(NPC, 836.23, -25.43, -20.23, 2, 15)
	MovementLoopAddLocation(NPC, 844.75, -25.43, -20.69, 2, 0)
	MovementLoopAddLocation(NPC, 844.75, -25.43, -20.69, 2, 15)
	MovementLoopAddLocation(NPC, 856.52, -25.43, -28.37, 2, 0)
	MovementLoopAddLocation(NPC, 867.69, -25.44, -31.45, 2, 0)
	MovementLoopAddLocation(NPC, 875.38, -25.46, -31.19, 2, 0)
	MovementLoopAddLocation(NPC, 892.72, -25.5, -24.11, 2, 0)
	MovementLoopAddLocation(NPC, 897.35, -25.44, -22.26, 2, 0)
	MovementLoopAddLocation(NPC, 904.74, -24.93, -30.29, 2, 0)
	MovementLoopAddLocation(NPC, 902.36, -23.46, -40.71, 2, 0)
	MovementLoopAddLocation(NPC, 901.87, -23.47, -42.05, 2, 15)
	MovementLoopAddLocation(NPC, 895.3, -25.42, -58.06, 2, 0)
	MovementLoopAddLocation(NPC, 879.7, -25.39, -65.55, 2, 0)
	MovementLoopAddLocation(NPC, 873.72, -25.39, -67.39, 2, 0)
	MovementLoopAddLocation(NPC, 815.64, -21.27, -65.25, 2, 0)
	MovementLoopAddLocation(NPC, 804.23, -20.64, -64.26, 2, 0)
	MovementLoopAddLocation(NPC, 762.43, -21.4, -62.95, 2, 0)
	MovementLoopAddLocation(NPC, 751.84, -21.08, -66.73, 2, 0)
	MovementLoopAddLocation(NPC, 765.93, -20.8, -36.21, 2, 15)
	MovementLoopAddLocation(NPC, 756.43, -21.01, -16.25, 2, 0)
	MovementLoopAddLocation(NPC, 734.19, -21.34, -24.87, 2, 0)
	MovementLoopAddLocation(NPC, 692.32, -20.76, -31.66, 2, 0)
	MovementLoopAddLocation(NPC, 692.96, -20.79, -32.01, 2, 15)
	MovementLoopAddLocation(NPC, 701.26, -20.94, -35.06, 2, 0)
	MovementLoopAddLocation(NPC, 724.75, -21.39, -39.34, 2, 0)
	MovementLoopAddLocation(NPC, 739.4, -21.21, -61.66, 2, 0)
	MovementLoopAddLocation(NPC, 798.21, -20.88, -64.4, 2, 0)
	MovementLoopAddLocation(NPC, 852.87, -25.36, -66.64, 2, 0)
	MovementLoopAddLocation(NPC, 892.63, -25.38, -58.55, 2, 0)
	MovementLoopAddLocation(NPC, 907.04, -25.41, -24.41, 2, 0)
	MovementLoopAddLocation(NPC, 911.41, -25.47, -13.37, 2, 0)
end







