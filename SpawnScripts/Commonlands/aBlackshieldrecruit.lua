--[[
    Script Name    : SpawnScripts/Commonlands/aBlackshieldrecruit.lua
    Script Author  : Premierio015
    Script Date    : 2021.01.07 12:01:27
    Script Purpose : 
                   : 
--]]


local BlackshieldDockhandID = 299539
local SmugglersSecrets = 452
local CratesOnTheNerves = 453 

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange")
end

function respawn(NPC)
    spawn(NPC)
end


function hailed(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  if HasSpellEffect(Spawn, 5459) and GetQuestStep(Spawn, SmugglersSecrets) == 3 then
  PlayFlavor(NPC, "", "No loafings!  We gaves you the scroll, now goes.", "", 1689589577, 4560189, Spawn)
end
   end

-- TIMERS USED FOR CALLING DIALOGUE FUNCTIONS FROM  "a Blackshield Dockhand" Script

function dlgtimer(NPC, Spawn)
local zone = GetZone(NPC)
local BlackshieldDockhand = GetSpawnByLocationID(zone, BlackshieldDockhandID)
if BlackshieldDockhand ~= nil then
AddTimer(BlackshieldDockhand, 1000, "BlackshieldDockhandLine1", 1, Spawn)
end
   end

function dlgtimer2(NPC, Spawn)
local zone = GetZone(NPC)
local BlackshieldDockhand = GetSpawnByLocationID(zone, BlackshieldDockhandID)
if BlackshieldDockhand ~= nil then
AddTimer(BlackshieldDockhand, 1000, "BlackshieldDockhandLine2", 1, Spawn)
end
   end


function dlgtimer4(NPC, Spawn)
local zone = GetZone(NPC)
local BlackshieldDockhand = GetSpawnByLocationID(zone, BlackshieldDockhandID)
if BlackshieldDockhand ~= nil then
AddTimer(BlackshieldDockhand, 1000, "BlackshieldDockhandLine3", 1, Spawn)
end
   end

function dlgtimer6(NPC, Spawn)
local zone = GetZone(NPC)
local BlackshieldDockhand = GetSpawnByLocationID(zone, BlackshieldDockhandID)
if BlackshieldDockhand ~= nil then
AddTimer(BlackshieldDockhand, 1000, "BlackshieldDockhandLine4", 1, Spawn)
end
   end


function dlgtimerCratesOnTheNerves02(NPC, Spawn)
local zone = GetZone(NPC)
local BlackshieldDockhand = GetSpawnByLocationID(zone, BlackshieldDockhandID)
if BlackshieldDockhand ~= nil then
AddTimer(BlackshieldDockhand, 1000, "BlackshieldDockhandLineCratesOnTheNerves2", 1, Spawn)
end
   end


-- Dialog Part for "a Blackshield Recruit"

function BlackshieldRecruitLine(NPC, Spawn)
    local zone = GetZone(NPC)
    local BlackshieldDockhand = GetSpawnByLocationID(zone, BlackshieldDockhandID)
    FaceTarget(NPC, BlackshieldDockhand)
    conversation = CreateConversation()
    AddConversationOption(conversation, "[Continue eavesdropping.]", "dlgtimer")
    StartConversation(conversation, NPC, Spawn, "Nice set ups, though don't yous think?")   
end



function BlackshieldRecruitLine2(NPC, Spawn)
    local zone = GetZone(NPC)
    local BlackshieldDockhand = GetSpawnByLocationID(zone, BlackshieldDockhandID)
    PlayAnimation(NPC, 10745)
    FaceTarget(NPC, BlackshieldDockhand)
    conversation = CreateConversation()
    AddConversationOption(conversation, "[Continue eavesdropping.]", "dlgtimer2")
    StartConversation(conversation, NPC, Spawn, "I knows, but I can't help to wonders who the client is.")
end




function BlackshieldRecruitLine3(NPC, Spawn)
    local zone = GetZone(NPC)
    local BlackshieldDockhand = GetSpawnByLocationID(zone, BlackshieldDockhandID)
    FaceTarget(NPC, BlackshieldDockhand)
    PlayAnimation(NPC, 10843)
    conversation = CreateConversation()
    AddConversationOption(conversation, "[Continue eavesdropping.]", "dlgtimer4")
    StartConversation(conversation, NPC, Spawn, "Yous don't ever wond... Hey, there ya are.")
end

function BlackshieldRecruitLine4(NPC, Spawn)
    local zone = GetZone(NPC)
    local BlackshieldDockhand = GetSpawnByLocationID(zone, BlackshieldDockhandID)
    FaceTarget(NPC, BlackshieldDockhand)
    PlayAnimation(NPC, 13056)
    conversation = CreateConversation()  
    AddConversationOption(conversation, "I'm sorry?", "dlgtimer6")
    StartConversation(conversation, NPC, Spawn, "Betters get there faster then yous got here!")
end
 
 
function BlackshieldRecruitLineCratesOnTheNerves(NPC, Spawn)
   local zone = GetZone(NPC)
    local BlackshieldDockhand = GetSpawnByLocationID(zone, BlackshieldDockhandID)
    FaceTarget(NPC, BlackshieldDockhand)
     conversation = CreateConversation()  
       AddConversationOption(conversation, "[Continue eavesdropping.]", "dlgtimerCratesOnTheNerves02")
        StartConversation(conversation, NPC, Spawn, "Thanks you! Is find it odd to unpack goods and repack thems to be sold, though.")
end


function BlackshieldRecruitLineCratesOnTheNervesFinal(NPC, Spawn)
      SetStepComplete(Spawn, CratesOnTheNerves, 12)
      local zone = GetZone(NPC)
    local BlackshieldDockhand = GetSpawnByLocationID(zone, BlackshieldDockhandID)
    FaceTarget(NPC, BlackshieldDockhand)
     conversation = CreateConversation()  
       AddConversationOption(conversation, "[You've heard enough.]")
        StartConversation(conversation, NPC, Spawn, "Profits is always good. Such contracts to get rid of sellable good is nices.")
end

function InRange(NPC, Spawn)
        if HasSpellEffect(Spawn, 5459) and GetQuestStep(Spawn, SmugglersSecrets) == 2 then
        BlackshieldRecruitLine(NPC, Spawn)
end
   end




