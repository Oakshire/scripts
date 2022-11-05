--[[
    Script Name    : SpawnScripts/Oakmyst/Wobblecog.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.22 05:10:32
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 12, "InRange", "LeaveRange")
end

function InRange(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    choice = MakeRandomInt(1,2)
    if choice ==1 then
    PlayFlavor(NPC, "voiceover/english/mirf_guinders/qey_village06/100_mirf_guinders_callout_a5068619.mp3","Come hither, for I have much to tell you!", "beckon", 2649708751,4092898916, Spawn)
    else
    PlayFlavor(NPC, "voiceover/english/merchant_qwergo_togglesmeet/fprt_hood03/100_merchantqwergobtogglesmeet_callout_3ca72d41.mp3","I have something so very important to say to you!  Will you not hear me out?", "wave", 892700118,2368875233, Spawn)
end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Sorry friend.  You have stepped into an area lost in the fabric of time. Shall I send you to a more stable timeline?")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_3_1020.mp3",0,0 )
    PlayFlavor(NPC,"","","hello",0,0,Spawn)
	Dialog.AddOption("Yes please! Send me to a stable timeline.             [Classic Zone]","ClassicZone")
	Dialog.AddOption("Why shouldn't I stay here?","OtherPlace")
	Dialog.AddOption("Can't you send me somewhere else?","OtherPlace2")
	Dialog.AddOption("No thank you.  I'll stay here for now.")
	Dialog.Start()	
end

function OtherPlace(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You'll encounter oddities here until the timelines sort themselves out. The time-fragments are still being reassembled!")
    PlayFlavor(NPC,"","","scold",0,0,Spawn)
	Dialog.AddOption("Alright. Send me to a stable timeline from here. [Classic Zone]","ClassicZone")
	Dialog.AddOption("Can't you send me somewhere else?","OtherPlace2")
	Dialog.AddOption("[Other reasons?]","OtherReasons")
	Dialog.AddOption("Nevermind then. I'm staying here.")
	Dialog.Start()	
end

function OtherReasons(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("[This zone is the Revamped (LU19) version. Some content here are still a work in progress. The classic zones need testing and offer quest updates not found here.]")
	Dialog.AddOption("Alright. Send me to a stable timeline from here. [Classic Zone]","ClassicZone")
	Dialog.AddOption("Can't you send me somewhere else?","OtherPlace2")
	Dialog.AddOption("Nevermind then. I'm staying here.")
	Dialog.Start()	
end

function OtherPlace2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Are you mad?!  The seas are too terrible, too unpredictable!  The effects of the great cataclysms haven't subsided entirely, you know.  We need powerful, secure and sturdy vessels in order to travel and explore the unexplored reaches of the world!")
	Dialog.AddVoiceover("voiceover/english/regias_flutzrubble/fprt_hood03/quests/regiasflutzrubble/lore_regias_004.mp3", 16821237,3341915909)
    PlayFlavor(NPC,"","","no",0,0,Spawn)
	Dialog.AddOption("Alright. Send me to a stable timeline from here. [Classic Zone]","ClassicZone")
	Dialog.AddOption("Why shouldn't I stay here?","OtherPlace")
	Dialog.AddOption("Nevermind then. I'm staying here.")
	Dialog.Start()	
end


function respawn(NPC)
	spawn(NPC)
end

function ClassicZone(NPC,Spawn)
    FaceTarget(NPC, Spawn)
    choice = MakeRandomInt(1,5)
    if choice ==1 then
    PlayFlavor(NPC, "voiceover/english/gnome_eco_evil_1/ft/gnome/gnome_eco_evil_1_hail_gm_4d2d14ae.mp3", "So many test subjects, so little time!", "", 2502077, 3261378172, Spawn)
    elseif choice ==2 then
    PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_hail_gm_67fc1b9e.mp3", "If a gear is lost in a forest and no one can find it, did it ever exist to begin with?", "", 2116604349, 2342019789, Spawn, 0)
    elseif choice ==3 then
    PlayFlavor(NPC, "voiceover/english/gnome_eco_evil_1/ft/gnome/gnome_eco_evil_1_hail_gm_a0ec45ef.mp3", "Through the advances in modern magic, anything is possible.", "", 2871018676, 2157629655, Spawn)
    elseif choice ==4 then
    PlayFlavor(NPC, "voiceover/english/gnome_eco_evil_1/ft/gnome/gnome_eco_evil_1_hail_gm_b7905eb1.mp3", "No, no, no!!!  That will never work!  The person still needs to breathe, don't they?  Don't they?", "", 3693935176, 3848510180, Spawn)
    elseif choice ==5 then
    PlayFlavor(NPC, "voiceover/english/gnome_base_1/ft/gnome/gnome_base_1_1_death_gm_4cc32cef.mp3","Looks like its time to move on!", "",2032831151,1634089730, Spawn)
end
    CastSpell(NPC,132)
    AddTimer(NPC,2000,"Teleport",1,Spawn)
end


function Teleport(NPC,Spawn)
    CastSpell(Spawn,101)
    AddTimer(NPC,2300,"Teleport2",1,Spawn)
end

function Teleport2(NPC,Spawn)
        local zone = GetZone(Spawn)  
        
        if GetZoneID(zone) == 195 then --Oakmyst       
        ZoneRef = GetZone("Oakmyst_Classic")
        Zone(ZoneRef,Spawn)
        
        elseif GetZoneID(zone) == 196 then --ForestRuins       
        ZoneRef = GetZone("ForestRuins_Classic")
        Zone(ZoneRef,Spawn)  
        
        elseif GetZoneID(zone) == 197 then --Caves       
        ZoneRef = GetZone("Caves_Classic")
        Zone(ZoneRef,Spawn) 
        
        elseif GetZoneID(zone) == 198 then --Caves       
        ZoneRef = GetZone("PeatBog_Classic")
        Zone(ZoneRef,Spawn)        
        end



end