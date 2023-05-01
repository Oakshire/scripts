--[[
    Script Name    : SpawnScripts/Generic/MonsterCallouts/ForestersAntonica.lua
    Script Author  : Dorbin
    Script Date    : 2023.04.30 12:04:20
    Script Purpose : Farmers and Foresters in Antonica( and Beyond) Combat VOs
                   : 
--]]
local HealthCallout = false --REDUCES Half-Health Spam
local CalloutTimer = false --REDUCES Callout Spam

  
--AGGRO CHECK --

function aggro(NPC,Spawn) --RACE CHECK
    SetTempVariable(NPC, "CalloutTimer", "false")
    SetTempVariable(NPC, "HealthCallout", "false")
if  GetTempVariable(NPC, "CalloutTimer")== "false"then
    SetTempVariable(NPC, "CalloutTimer", "true")
    AddTimer(NPC,7000,"ResetTimer")
    if GetGender(NPC)==1 then       --GENDER CHECK.  1==Male
     choice = MakeRandomInt(1,2)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/human_foresters/ft/human/human_foresters_1_aggro_gm_da8c1c5d.mp3", "You angered the spirits of the woods for the last time.", "", 3652855832, 3722520538)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/human_foresters/ft/human/human_foresters_1_aggro_gm_94a32cfd.mp3", "You will not despoil our sacred forest!", "", 1192082212, 2703953780)
        end  
    else
 	local choice = MakeRandomInt(1,3)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/human_foresters/ft/human/human_foresters_1_aggro_gf_fb18860.mp3", "The wisdom of the woods is not for you!", "", 114509927, 2469036691)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/human_foresters/ft/human/human_foresters_1_aggro_gf_da8c1c5d.mp3", "You angered the spirits of the woods for the last time.", "", 3419069517, 4183032814)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional3/human_foresters/ft/human/human_foresters_1_aggro_gf_94a32cfd.mp3", "You will not despoil our sacred forest!", "", 603052244, 1007102278)
        end
end    
end
end 
 
   
-- DEATH CHECK --

function death(NPC,Spawn) --RACE CHECK
if  GetTempVariable(NPC, "CalloutTimer")== "false"then
    if GetGender(NPC)==1 then
 	 choice = MakeRandomInt(1,2)
    
        if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/human_foresters/ft/human/human_foresters_1_death_gm_c8e6f923.mp3", "My friend may have fallen like a rotten tree but I will not.", "", 1442503118, 3414327424, Spawn, 0)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/human_foresters/ft/human/human_foresters_1_death_gm_3b153248.mp3", "You cannot kill us all, despoiler!", "", 321437922, 3533387413, Spawn, 0)
        end
    else
 	 choice = MakeRandomInt(1,2)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/human_foresters/ft/human/human_foresters_1_death_gf_c8e6f923.mp3", "My friend may have fallen like a rotten tree but I will not.", "", 4216402375, 1354432516, Spawn, 0)
        else
		PlayFlavor(NPC, "voiceover/english/optional3/human_foresters/ft/human/human_foresters_1_death_gf_3b153248.mp3", "You cannot kill us all, despoiler!", "", 3926164437, 4058895580, Spawn, 0)
       end
    end
end
end

-- HealthChange CHECK --

function healthchanged(NPC,Spawn) --RACE CHECK
if GetHP(NPC) <= GetMaxHP(NPC) * 0.55 and GetHP(NPC) >= GetMaxHP(NPC) * 0.45 then
    if IsAlive(NPC) and IsInCombat(NPC)==true  and IsPlayer(Spawn)and  GetTempVariable(NPC, "CalloutTimer")== "false" and GetTempVariable(NPC, "HealthCallout")== "false" then
        SetTempVariable(NPC, "HealthCallout", "true")
        AddTimer(NPC,9000,"HealthReset")
   if GetGender(NPC)==1 then
	 choice = MakeRandomInt(1,3)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/human_foresters/ft/human/human_foresters_1_halfhealth_gm_3b5012e4.mp3", "Is this sap seeping from my skin?", "", 3378401909, 2016168772)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/human_foresters/ft/human/human_foresters_1_halfhealth_gm_6a01659b.mp3", "You will not fell me like some lumberjack!", "", 3082129005, 2882113499)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional3/human_foresters/ft/human/human_foresters_1_battle_gm_df824c1b.mp3", "I'm more frightening than the dark woods.", "", 3188821257, 3608290528)
        end
    else
	 choice = MakeRandomInt(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/human_base_1/ft/human/human_base_1_1_halfhealth_gf_8529e507.mp3", "I can't hold them forever!", "", 3371581229, 792393228)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/human_base_1/ft/human/human_base_1_1_halfhealth_gf_1babf022.mp3", "Is that all you have?", "", 2979351329, 4050238683)
        end
    end
    end
end
end

-- Victory CHECK --


function victory(NPC,Spawn)
    if GetGender(NPC)==1 then
	 choice = MakeRandomInt(1,3)
	    if choice == 1 then
        PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_victory_gm_153f12ff.mp3", "One down!", "", 3009518664, 4140389760)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_victory_gm_4553e1e0.mp3", "Flee now or meet this one's fate.", "", 3032162747, 1359206304)
        elseif choice == 3 then
        PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_victory_gm_ec0cd85a.mp3", "I hope they're all this easy.", "", 2687289628, 2303639320)
        end
    else
	 choice = MakeRandomInt(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/human_base_1/ft/human/human_base_1_1_victory_gf_6f459088.mp3", "Flee now or meet this one's fate.", "", 290765367, 473549337)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/human_base_1/ft/human/human_base_1_1_victory_gf_ec0cd85a.mp3", "I hope they're all this easy.", "", 1073758360, 3342649012)
        end
    end
end

function ResetTimer(NPC) -- 7 SECOND PAUSE BETWEEN VOs
    SetTempVariable(NPC, "CalloutTimer", "false")
end

function HealthReset (NPC)  --SO HALF HEALTH DOESN'T SPAM
    SetTempVariable(NPC, "HealthCallout", "false")
    SetTempVariable(NPC, "CalloutTimer", "false")
end