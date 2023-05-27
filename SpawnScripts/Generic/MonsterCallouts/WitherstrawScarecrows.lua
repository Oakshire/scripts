--[[
    Script Name    : SpawnScripts/Generic/MonsterCallouts/WitherstrawScarecrows.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.27 12:05:30
    Script Purpose : 
                   : 
--]]
local HealthCallout = false
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
  
  
    
function Garbled(NPC,Spawn)
  	local choice = MakeRandomInt(1,4)
 	    if choice == 1 then
        PlayFlavor(NPC, "voiceover/english/scarecrow_witherstraw/ft/scarecrow/scarecrow_witherstraw_1_garbled_71321a1c.mp3", "Wallaassss  kitss  zooomasss   shif", "", 1143169283, 2445607944, Spawn, 21)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/scarecrow_witherstraw/ft/scarecrow/scarecrow_witherstraw_1_garbled_bb9b62e6.mp3", "Harrssst sssstookesss heessst.", "", 1671834508, 3012005345, Spawn, 21)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/scarecrow_witherstraw/ft/scarecrow/scarecrow_witherstraw_1_garbled_cbb3485b.mp3", "Shisss mellissart perraassalk!", "", 347914344, 1665747235, Spawn, 21)
        elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/scarecrow_witherstraw/ft/scarecrow/scarecrow_witherstraw_1_garbled_bdd71a65.mp3", "Sisssssharrrr    oookmessss  jetssss", "", 1391840565, 1188489177, Spawn, 21)
     end     
end

 function aggro(NPC,Spawn)   
    if IsPlayer(Spawn)==true then
    if not HasLanguage(Spawn,21 )and IsPlayer(Spawn)==true then
    Garbled(NPC,Spawn)
    else
 	local choice = MakeRandomInt(1,2)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional5/halfling_corrupted/ft/halfling/halfling_corrupted_2_battle_gm_b1fd0396.mp3", "We were once like you.", "", 3752287071, 136628031, Spawn, 21)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional5/halfling_corrupted/ft/halfling/halfling_corrupted_2_aggro_gm_3c9b103f.mp3", "Destroy the invaders!", "", 1579115349, 1024832768, Spawn, 21)
           end
    end
end   
end


function death(NPC,Spawn)
    if math.random(0,100)<=75 then
    if IsPlayer(Spawn)==true then

    if not HasLanguage(Spawn,21 ) then
    Garbled(NPC,Spawn)
    else
        local choice = MakeRandomInt(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/scarecrow_witherstraw/ft/scarecrow/scarecrow_witherstraw_1_death_3e53153d.mp3", "Clean that up right now!", "", 2052052230, 3977423066, Spawn, 21)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/scarecrow_witherstraw/ft/scarecrow/scarecrow_witherstraw_1_death_4e81dcfa.mp3", "Now who will keep the birds away?", "", 374305807, 2668085630, Spawn, 21)
    end
    end
end
end
end



--[[function healthchanged(NPC, Spawn)  
    if IsPlayer(Spawn)==true then
    if HealthCallout == false then
    if GetHP(NPC) < GetMaxHP(NPC) * 0.55 then
     if GetHP(NPC) > GetMaxHP(NPC) * 0.45 then
        HealthCallout = true
        AddTimer(NPC,10000,"HealthReset")
    if not HasLanguage(Spawn,21 )and IsPlayer(Spawn)==true then
        Garbled(NPC,Spawn)
    else    
      local choice = MakeRandomInt(1,4)
	if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_3_halfhealth_d093de2d.mp3", "Yip yip yip!", "", 166674284, 1395857397, Spawn, 18)
	elseif choice == 2 then
	PlayFlavor(NPC, "voiceover/english/gnoll_darkpaw/ft/gnoll/gnoll_darkpaw_3_halfhealth_50cceadf.mp3", "Uhhhh... I think I go now!", "", 4127070268, 185913289, Spawn, 18)
	elseif choice == 3 then
	PlayFlavor(NPC, "voiceover/english/gnoll_darkpaw/ft/gnoll/gnoll_darkpaw_1_halfhealth_aff2b15d.mp3", "Now I'm really angry!", "", 1156319723, 267275011, Spawn, 18)
 	elseif choice == 4 then
    if  GetClass(Spawn)== WIZARD or GetClass(Spawn)== WARLOCK or GetClass(Spawn)== ILLUSIONIST or GetClass(Spawn)== COERCER or GetClass(Spawn)== NECROMANCER or GetClass(Spawn)== CONJUROR or GetClass(Spawn)== MAGE or GetClass(Spawn)== ENCHANTER or GetClass(Spawn)== SUMMONER or GetClass(Spawn)== SORCERER then
    PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_3_maomage_8fb8565d.mp3", "Yip! Watch out for their magic!", "", 1674162517, 4259121980, Spawn, 18)       
    else
    PlayFlavor(NPC, "voiceover/english/optional5/gnoll_base_2/ft/gnoll/gnoll_base_2_1_battle_m_5c7913bb.mp3", "Bah!  You smell horrible!", "", 687847219, 3365844906, Spawn, 18)             
    end    
    end
    end
    end
end
end
end
end]]--

function HealthReset (NPC)
    HealthCallout = false
end


function victory(NPC,Spawn)
     if IsPlayer(Spawn)==true then
       if  HasLanguage(Spawn,21 )and IsPlayer(Spawn)==true then
  local choice = MakeRandomInt(1,3)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional5/halfling_corrupted/ft/halfling/halfling_corrupted_2_aggro_gm_1580b351.mp3", "I must obey.", "", 1087573420, 743350754, Spawn, 21)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/halfling_crazed/ft/halfling/halfling_crazed_1_aggro_gm_3926b546.mp3", "There is fresh blood among us!", "", 160123219, 680011315, Spawn, 21)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional3/succubus_reaper_horde/ft/succubus/succubus_reaper_horde_1_death_1f44697b.mp3", "You will suffer the ultimate in torture for that!", "", 2010056742, 2525379709, Spawn, 21)
    end
end
end
end