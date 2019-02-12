--These contain tables for relevant, spawnable NPCs
include_lua('../spawndefs/Contaminated.spawndef.lua')
include_lua('../spawndefs/Police_Robots.spawndef.lua')
include_lua('../spawndefs/Shady_Deal_Cop.spawndef.lua')

--[[
  NOTE:  Neither the city cops or Robots (with no #) are used for some reason.
  Robots1 is the downed drone + tech group (grp2232)
  Robots2 and Robots3 are the training rikti drones

  NOTE: I think this entire file may become obselete as
  development continues, in favor of the Spawndef file. That may
  depend on what we'll actually get from the server, however.

  NOTE: Each entry can have multiple CanSpawns but they must be
  sequential. There must always be a CanSpawn1 at minimum.
  Adding more will (later) increase the number of squads spawned.
  Here, I added ["CanSpawn2"] to the Contaminated listing to
  make the new encounter template I created (with a victim) work.
]]


local ES_Library_Objects = {
  ["ES_Contaminated_City_00_01"] = {
    "Encounter_V_40", "Encounter_V_42", "Encounter_V_41",
    "Encounter_E_06", "Encounter_E_05", "Encounter_S_31",
    "Encounter_S_30", "Encounter_E_02", "Encounter_E_01",
    "Encounter_E_08", "Encounter_S_32", "Encounter_E_07",
    "Encounter_E_03", "Encounter_E_04",
    ["EncounterSpawn"] = "CenteredAround",
    ["CanSpawn1"] = Contaminated_D1_V0,
    ["CanSpawn2"] = Contaminated_D1_V1,
  },
  ["ES_Cops_City_00_01"] = {
    "Encounter_V_40", "Encounter_V_42", "Encounter_V_41",
    "Encounter_E_06", "Encounter_E_05", "Encounter_S_31",
    "Encounter_S_30", "Encounter_E_02", "Encounter_E_01",
    "Encounter_E_08", "Encounter_S_32", "Encounter_E_07",
    "Encounter_E_03", "Encounter_E_04",
    ["EncounterSpawn"] = "CenteredAround",
    ["CanSpawn1"] = Shady_Deal_Cops_D1_V0,
  },
  ["ES_Robots_City_00_01"] = {
    "Encounter_S_31", "Encounter_S_30", "Encounter_E_01",
    "Encounter_E_02", "Encounter_E_03", "Encounter_E_04",
    "Encounter_E_05", "Encounter_E_10", "Encounter_E_09",
    "Encounter_E_08", "Encounter_E_07", "Encounter_E_06",
    ["EncounterSpawn"] = "Phalanx",
    ["CanSpawn1"] = Robot1_D1_V0,
  },
  ["ES_Robot1_City_00_01"] = {
    "Encounter_V_40", "Encounter_V_42", "Encounter_V_41",
    "Encounter_E_06", "Encounter_E_05", "Encounter_S_31",
    "Encounter_S_30", "Encounter_E_02", "Encounter_E_01",
    "Encounter_E_08", "Encounter_S_32", "Encounter_E_07",
    "Encounter_E_03", "Encounter_E_04",
    ["EncounterSpawn"] = "CenteredAround",
    ["CanSpawn1"] = Robot1_D1_V0,
  },
  ["ES_Robot2_City_00_01"] = {
    "Encounter_E_01",
    ["EncounterSpawn"] = "Encounter",
    ["CanSpawn1"] = Robot2_D10_V0,
  },
  ["ES_Robot3_City_00_01"] = {
    "Encounter_E_01",
    ["EncounterSpawn"] = "Encounter",
    ["CanSpawn1"] = Robot3_D5_V0,
  },
}


--Returns true if a Spawn Definition is found in the library
function IsSpawnDef(definition)
        if ES_Library_Objects[definition] == nil then
              return false
        end

        return true
end

--Returns the number of CanSpawn variations in the provided definition
function GetCanSpawnCount(definition)
        local counter = 0
        for SpawnIndex = 1, 20 do
                local Validate = ES_Library_Objects[tostring(definition)]["CanSpawn" .. SpawnIndex]
                if Validate ~= nil then counter = counter +1 end
        end

        return counter
end

--Returns the encounter's base type (i.e., its template)
function GetBaseType(definition)
        return ES_Library_Objects[tostring(definition)]["EncounterSpawn"]
end

--Returns the appropriate Variant Table
function GetVariant(definition, SpawnIndex)
        return ES_Library_Objects[definition][SpawnIndex]
end
