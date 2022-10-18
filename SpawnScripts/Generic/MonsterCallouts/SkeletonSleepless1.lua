--[[
    Script Name    : SpawnScripts/Generic/MonsterCallouts/SkeletonSleepless1.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.18 03:10:13
    Script Purpose : Sleepless skeleton VOs.  Found primarily in Forest Ruins.
                   : 
--]]
local HealthCallout = false --REDUCES Half-Health Spam
local CalloutTimer = false --REDUCES Callout Spam


    
function aggro(NPC,Spawn)
    SetTempVariable(NPC, "CalloutTimer", "false")
if  GetTempVariable(NPC, "CalloutTimer")== "false" and math.random(0,100) <=40 and IsPlayer(Spawn) then
    SetTempVariable(NPC, "CalloutTimer", "true")
    AddTimer(NPC,10000,"ResetTimer")
 	local choice = MakeRandomInt(1,6)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/skeleton_sleepless_magi/ft/skeleton/skeleton_sleepless_magi_1_aggro_594f832b.mp3", "A proper test!", "", 2458242400, 1568956619)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/skeleton_sleepless_magi/ft/skeleton/skeleton_sleepless_magi_1_aggro_e04379ce.mp3", "Do not disturb me!", "", 3771011343, 3015021446)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/skeleton_sleepless_magi/ft/skeleton/skeleton_sleepless_magi_1_aggro_301dd369.mp3", "My progress will not be halted!", "", 3094765826, 2792009212)
        elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/optional3/skeleton_sleepless_magi/ft/skeleton/skeleton_sleepless_magi_2_aggro_594f832b.mp3", "A proper test!", "", 3163910475, 1454332736)
        elseif choice == 5 then
        PlayFlavor(NPC, "voiceover/english/optional3/skeleton_sleepless_magi/ft/skeleton/skeleton_sleepless_magi_2_aggro_301dd369.mp3", "My progress will not be halted!", "", 3626750848, 2194222501)
        elseif choice == 6 then
        PlayFlavor(NPC, "voiceover/english/optional3/skeleton_sleepless_magi/ft/skeleton/skeleton_sleepless_magi_2_aggro_e04379ce.mp3", "Do not disturb me!", "", 2666722708, 325802695)
      
        end
    end
       AddTimer(NPC,math.random(15000,30000),"FifteenCall",1,Spawn)
end   



function death(NPC,Spawn)
  if     GetTempVariable(NPC, "CalloutTimer")== "false" and IsPlayer(Spawn) then
        local choice = MakeRandomInt(1,3)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/skeleton_sleepless_magi/ft/skeleton/skeleton_sleepless_magi_1_death_773d1ae2.mp3", "You cannot defeat us all!", "", 727426116, 26895558)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/skeleton_sleepless_magi/ft/skeleton/skeleton_sleepless_magi_2_death_773d1ae2.mp3", "You cannot defeat us all!", "", 1100354814, 1332403039)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/skeleton_sleepless_magi/ft/skeleton/skeleton_sleepless_magi_1_death_7e2a7df7.mp3", "It is not over!", "", 4202384571, 4094436000)
    end
    end
end



function FifteenCall(NPC,Spawn)
if IsInCombat(NPC)==true and IsAlive(NPC) == true and math.random(0,100)<=25 and IsPlayer(Spawn) then
if GetTempVariable(NPC, "CalloutTimer") == "false" then
    SetTempVariable(NPC, "CalloutTimer", "true")
    AddTimer(NPC,10000,"ResetTimer")
      local choice = MakeRandomInt(1,3)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_everyfifteenseconds_8c0aac8c.mp3", "Nightmares are not only for slumber.", "", 4250803944, 3206368665)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/skeleton_sleepless_magi/ft/skeleton/skeleton_sleepless_magi_1_everyfifteenseconds_4ea7c10a.mp3", "Must find ink, quills.", "", 4179902262, 3067236564)
        elseif choice == 3 then
		PlayFlavor(NPC, "", "I don't know where they'll go from here.", "", 0, 0)
    end
    end
    if IsAlive(NPC)then
    AddTimer(NPC,math.random(15000,30000),"FifteenCall",1,Spawn)
    end
end  
end



function healthchanged(NPC, Spawn)  
 if GetTempVariable(NPC, "CalloutTimer") == "false" and IsPlayer(Spawn) then
    if GetTempVariable(NPC, "HealthCallout") == "false" then
    if GetHP(NPC) < GetMaxHP(NPC) * 0.55 then
    if GetHP(NPC) > GetMaxHP(NPC) * 0.45 then
    SetTempVariable(NPC, "HealthCallout", "true")
    SetTempVariable(NPC, "CalloutTimer", "true")
        AddTimer(NPC,10000,"ResetTimer")
        AddTimer(NPC,12500,"HealthReset")
    local choice = MakeRandomInt(1,6)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/skeleton_sleepless_magi/ft/skeleton/skeleton_sleepless_magi_2_halfhealth_68a94926.mp3", "No, must recall studies!", "", 9643365, 45994411)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/skeleton_sleepless_magi/ft/skeleton/skeleton_sleepless_magi_1_halfhealth_68a94926.mp3", "No, must recall studies!", "", 287237519, 284767385)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional3/skeleton_sleepless_magi/ft/skeleton/skeleton_sleepless_magi_2_halfhealth_ce22f0af.mp3", "I am weakening!", "", 3616537019, 3052298435)
	elseif choice == 4 then
		PlayFlavor(NPC, "", "Eh, just a temporary setback.", "", 0, 0)
	elseif choice == 5 then
		PlayFlavor(NPC, "", "Curious. I don't even feel that.", "", 0, 0)
	elseif choice == 6 then
		PlayFlavor(NPC, "", "Much to remember!", "", 0, 0)
		end    
    end
    end
    end
end
end


function victory(NPC,Spawn)
  local choice = MakeRandomInt(1,3)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_victory_d2a649e7.mp3", "The life ebbs from them so quickly.", "", 2674394976, 3151731037)
        elseif choice == 2 then
		PlayFlavor(NPC, "", "A pity.", "", 0, 0)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_victory_ccde17c2.mp3", "Another falls to join our ranks.", "", 3285235030, 4198320186)
end
end



function ResetTimer(NPC) -- 7 SECOND PAUSE BETWEEN VOs
    SetTempVariable(NPC, "CalloutTimer", "false")
end

function HealthReset (NPC)  --SO HALF HEALTH DOESN'T SPAM
    SetTempVariable(NPC, "HealthCallout", "false")
end