--[[
    Script Name    : SpawnScripts/Generic/MonsterCallouts/BaseDwarf1.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.26 11:05:07
    Script Purpose : Base Dwarf Racial Callouts
                   : 
--]]
local HealthCallout = false --REDUCES Half-Health Spam
local CalloutTimer = false --REDUCES Callout Spam


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
  
  

    
function aggro(NPC,Spawn)
    CalloutTimer = true
    AddTimer(NPC,7000,"ResetTimer")
    if GetGender(NPC)==1 then       --GENDER CHECK.  1==Male
     choice = MakeRandomInt(1,3)
 	    if choice == 1 then
        PlayFlavor(NPC, "voiceover/english/dwarf_base_1/ft/dwarf/dwarf_base_1_1_aggro_gm_23b35126.mp3", "Where do ya think you're going?", "", 706272128, 909565004)
        elseif choice == 2 then
        PlayFlavor(NPC, "voiceover/english/dwarf_base_1/ft/dwarf/dwarf_base_1_1_aggro_gm_9de55a3e.mp3", "There they are! Let's get em!", "", 3246206943, 366784514)
        elseif choice == 3 then
        PlayFlavor(NPC, "voiceover/english/dwarf_base_1/ft/dwarf/dwarf_base_1_1_aggro_gm_ab9057d3.mp3", "Looking for me? ", "", 438949611, 3910736957)
        end  
        else
        if GetClass(Spawn)>=1 and GetClass(Spawn)<=10 then 
      	choice = MakeRandomInt(1,4) --Fighter CHECK
        else
        choice = MakeRandomInt(1,3)
        end
 	    if choice == 1 then
        PlayFlavor(NPC, "voiceover/english/dwarf_base_1/ft/dwarf/dwarf_base_1_1_aggro_gf_ab9057d3.mp3", "Looking for me? ", "", 407706048, 337475746)
        elseif choice == 2 then
        PlayFlavor(NPC, "voiceover/english/dwarf_base_1/ft/dwarf/dwarf_base_1_1_aggro_gf_be4f625e.mp3", "Where do ya think you're going?", "", 152508601, 1517122703)
        elseif choice == 3 then
        PlayFlavor(NPC, "voiceover/english/dwarf_base_1/ft/dwarf/dwarf_base_1_1_aggro_gf_d29563c7.mp3", "There they are! Let's get em!", "", 995196475, 1619899594)
        elseif choice == 4 then
        PlayFlavor(NPC, "voiceover/english/dwarf_base_1/ft/dwarf/dwarf_base_1_1_maofighter_gf_428f2c06.mp3", "You, back up there!  I'm taking the warrior!", "", 1284306998, 1476787670)
        end
       AddTimer(NPC,15000,"FifteenCall")
end    
end
   



function death(NPC,Spawn)
 --[[if CalloutTimer == false then
    CalloutTimer = true
    AddTimer(NPC,7000,"ResetTimer")]]--
    if GetGender(NPC)==1 then
 	local choice = MakeRandomInt(1,2)
    
        if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/dwarf_base_1/ft/dwarf/dwarf_base_1_1_death_gm_bac4e4e8.mp3", "You'll never take me alive!", "", 3841822806, 1060375787, Spawn, 0)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/dwarf_base_1/ft/dwarf/dwarf_base_1_1_death_gm_e462fcd1.mp3", "Go on now, I'll hold them!", "", 4022696973, 1224761357, Spawn, 0)
        end
    else
 	local choice = MakeRandomInt(1,2)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/dwarf_base_1/ft/dwarf/dwarf_base_1_1_death_gf_e462fcd1.mp3", "Go on now, I'll hold them!", "", 1183447615, 1679392141, Spawn, 0)
        else
		PlayFlavor(NPC, "voiceover/english/dwarf_base_1/ft/dwarf/dwarf_base_1_1_death_gf_e462fcd1.mp3", "Go on now, I'll hold them!", "", 1183447615, 1679392141, Spawn, 0)
       end
    end
    end
--end


function victory(NPC,Spawn)
 --[[if CalloutTimer == false then
    CalloutTimer = true
    AddTimer(NPC,7000,"ResetTimer")]]--
    if GetGender(NPC)==1 then
	local choice = MakeRandomInt(1,3)
	    if choice == 1 then
        PlayFlavor(NPC, "voiceover/english/dwarf_base_1/ft/dwarf/dwarf_base_1_1_victory_gm_4a1ceaef.mp3", "Ha! I'm not done yet. Get back up!", "", 458619926, 239663782, Spawn)
        elseif choice == 2 then
        PlayFlavor(NPC, "voiceover/english/dwarf_base_1/ft/dwarf/dwarf_base_1_1_victory_gm_d6c773c7.mp3", "I didn't think I hit em that hard.", "", 3680771732, 663911723, Spawn)
        elseif choice == 3 then
        PlayFlavor(NPC, "voiceover/english/dwarf_base_1/ft/dwarf/dwarf_base_1_1_victory_gm_ecd7fa6e.mp3", "An ale for the fallen!", "", 99121645, 2553343776, Spawn)
        end
    else
	local choice = MakeRandomInt(1,3)
	    if choice == 1 then
        PlayFlavor(NPC, "voiceover/english/dwarf_base_1/ft/dwarf/dwarf_base_1_1_victory_gf_4a1ceaef.mp3", "Ha! I'm not done yet. Get back up!", "", 1335528281, 2889456217, Spawn)
        elseif choice == 2 then
        PlayFlavor(NPC, "voiceover/english/dwarf_base_1/ft/dwarf/dwarf_base_1_1_victory_gf_d6c773c7.mp3", "I didn't think I hit em that hard.", "", 4016088326, 632010394, Spawn)
        elseif choice == 3 then
        PlayFlavor(NPC, "voiceover/english/dwarf_base_1/ft/dwarf/dwarf_base_1_1_victory_gf_ecd7fa6e.mp3", "An ale for the fallen!", "", 3223559996, 2677275600, Spawn)
        end
    end
end
--end

function ResetTimer(NPC) -- 7 SECOND PAUSE BETWEEN VOs
    CalloutTimer = false
end

function HealthReset (NPC)  --SO HALF HEALTH DOESN'T SPAM
    HealthCallout = false
end