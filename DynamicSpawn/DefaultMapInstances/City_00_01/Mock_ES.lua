--[[
  FORMAT:

  <<top-level group>>                 --e.g., grp2218
    <<sub-level group>>               --e.g., grp2454
      <<encounter-spawner>>           --e.g., ES_L2_3_Around_City
        <<properties>>                --e.g., CanSpawn1
        <<encounter-marker group>>    --e.g., Encounter_E_09
          <<encounter-marker object>> --e.g., _encounter_E_09
                                      --always just one (so far?)
]]

--This is partial mock group data from the top-level Outbreak group: grp2544
ES_Object =
{
  ["grp2229"] = {
        ["ES_Robot2_City_00_01"] = {
                ["Encounter_E_01"] = {["Position"] = vec3.new(-127.00, 4.00, 1304.50), ["Rotation"] = vec3.new(0.0, 1.408, 0.0)},
        },
  },
  ["grp2233"] = {
        ["ES_Robot3_City_00_01"] = {
                ["Encounter_E_01"] = {["Position"] = vec3.new(-130.00, 4.00, 1322.50), ["Rotation"] = vec3.new(0.0, 1.587, 0.0)},
        },
  },
  ["grp2533"] = {
        ["ES_Robot2_City_00_01"] = {
                ["Encounter_E_01"] = {["Position"] = vec3.new(-168.00, 4.00, 1320.00), ["Rotation"] = vec3.new(0.0, 1.576, 0.0)},
        },
  },
  ["grp2534"] = {
        ["ES_Robot2_City_00_01"] = {
                ["Encounter_E_01"] = {["Position"] = vec3.new(-167.99, 3.96, 1292.00), ["Rotation"] = vec3.new(0.0, 1.566, 0.0)},
        },
  },
  ["grp2535"] = {
        ["ES_Robot2_City_00_01"] = {
                ["Encounter_E_01"] = {["Position"] = vec3.new(-169.99, 3.96, 1258.00), ["Rotation"] = vec3.new(0.0, 1.697, 0.0)},
        },
  },
  ["grp2536"] = {
        ["ES_Robot2_City_00_01"] = {
                ["Encounter_E_01"] = {["Position"] = vec3.new(-162.00, 4.00, 1230.00), ["Rotation"] = vec3.new(0.0, 0.149, 0.0)},
        },
  },
  ["grp2537"] = {
        ["ES_Robot2_City_00_01"] = {
                ["Encounter_E_01"] = {["Position"] = vec3.new(-132.00, 4.00, 1230.00), ["Rotation"] = vec3.new(0.0, -0.006, 0.0)},
        },
  },
  ["grp2538"] = {
        ["ES_Robot2_City_00_01"] = {
                ["Encounter_E_01"] = {["Position"] = vec3.new(-148.00, 3.92, 1331.99), ["Rotation"] = vec3.new(0.0, -3.115, 0.0)},
        },
  },
  ["grp2539"] = {
        ["ES_Robot3_City_00_01"] = {
                ["Encounter_E_01"] = {["Position"] = vec3.new(-160.00, 3.92, 1329.99), ["Rotation"] = vec3.new(0.0, 2.710, 0.0)},
        },
  },
  ["grp2540"] = {
        ["ES_Robot3_City_00_01"] = {
                ["Encounter_E_01"] = {["Position"] = vec3.new(-169.99, 3.92, 1306.00), ["Rotation"] = vec3.new(0.0, 1.557, 0.0)},
        },
  },
  ["grp2541"] = {
        ["ES_Robot3_City_00_01"] = {
                ["Encounter_E_01"] = {["Position"] = vec3.new(-167.99, 3.96, 1276.00), ["Rotation"] = vec3.new(0.0, 1.559, 0.0)},
        },
  },
  ["grp2542"] = {
        ["ES_Robot3_City_00_01"] = {
                ["Encounter_E_01"] = {["Position"] = vec3.new(-171.99, 4.00, 1240.01), ["Rotation"] = vec3.new(0.0, 0.885, 0.0)},
        },
  },
  ["grp2543"] = {
        ["ES_Robot3_City_00_01"] = {
                ["Encounter_E_01"] = {["Position"] = vec3.new(-146.00, 4.00, 1230.00), ["Rotation"] = vec3.new(0.0, 0.182, 0.0)},
        },
  },
  ["grp2051"] = {
        ["ES_Contaminated_City_00_01"] = {
                    ["Encounter_V_40"] = {["Position"] = vec3.new(191.00, 0.11, 1511.00), ["Rotation"] = vec3.new(0.0, 2.947, 0.0)},
                    ["Encounter_V_41"] = {["Position"] = vec3.new(194.39, 0.11, 1513.19), ["Rotation"] = vec3.new(0.0, 3.017, 0.0)},
                    ["Encounter_V_42"] = {["Position"] = vec3.new(191.31, 0.11, 1514.52), ["Rotation"] = vec3.new(0.0, -1.748, 0.0)},
                    ["Encounter_S_30"] = {["Position"] = vec3.new(191.72, 0.11, 1507.03), ["Rotation"] = vec3.new(0.0, -0.155, 0.0)},
                    ["Encounter_S_31"] = {["Position"] = vec3.new(195.42, 0.11, 1508.84), ["Rotation"] = vec3.new(0.0, -0.847, 0.0)},
                    ["Encounter_S_32"] = {["Position"] = vec3.new(187.34, 0.11, 1513.80), ["Rotation"] = vec3.new(0.0, 1.660, 0.0)},
                    ["Encounter_E_01"] = {["Position"] = vec3.new(188.27, 0.11, 1504.14), ["Rotation"] = vec3.new(0.0, 0.105, 0.0)},
                    ["Encounter_E_02"] = {["Position"] = vec3.new(196.46, 0.11, 1504.49), ["Rotation"] = vec3.new(0.0, -0.521, 0.0)},
                    ["Encounter_E_03"] = {["Position"] = vec3.new(188.98, 0.11, 1520.40), ["Rotation"] = vec3.new(0.0, 2.989, 0.0)},
                    ["Encounter_E_04"] = {["Position"] = vec3.new(193.59, 0.11, 1520.36), ["Rotation"] = vec3.new(0.0, 2.797, 0.0)},
                    ["Encounter_E_05"] = {["Position"] = vec3.new(199.51, 0.11, 1510.96), ["Rotation"] = vec3.new(0.0, -1.395, 0.0)},
                    ["Encounter_E_06"] = {["Position"] = vec3.new(198.66, 0.11, 1517.43), ["Rotation"] = vec3.new(0.0, -2.748, 0.0)},
                    ["Encounter_E_07"] = {["Position"] = vec3.new(183.05, 0.11, 1513.47), ["Rotation"] = vec3.new(0.0, 1.779, 0.0)},
                    ["Encounter_E_08"] = {["Position"] = vec3.new(184.74, 0.11, 1508.35), ["Rotation"] = vec3.new(0.0, 1.117, 0.0)},
              },
      },
  ["grp2276"] = {
        ["ES_Contaminated_City_00_01"] = {
                    ["Encounter_V_40"] = {["Position"] = vec3.new(221.13, 0.19, 1496.48), ["Rotation"] = vec3.new(0.0, 2.646, 0.0)},
                    ["Encounter_V_41"] = {["Position"] = vec3.new(223.56, 0.19, 1499.70), ["Rotation"] = vec3.new(0.0, 2.621, 0.0)},
                    ["Encounter_V_42"] = {["Position"] = vec3.new(220.21, 0.19, 1499.90), ["Rotation"] = vec3.new(0.0, -2.094, 0.0)},
                    ["Encounter_S_30"] = {["Position"] = vec3.new(223.16, 0.19, 1493.00), ["Rotation"] = vec3.new(0.0, -0.564, 0.0)},
                    ["Encounter_S_31"] = {["Position"] = vec3.new(226.02, 0.19, 1495.97), ["Rotation"] = vec3.new(0.0, -1.183, 0.0)},
                    ["Encounter_S_32"] = {["Position"] = vec3.new(216.73, 0.19, 1497.87), ["Rotation"] = vec3.new(0.0, 1.266, 0.0)},
                    ["Encounter_E_01"] = {["Position"] = vec3.new(220.91, 0.19, 1489.11), ["Rotation"] = vec3.new(0.0, -0.184, 0.0)},
                    ["Encounter_E_02"] = {["Position"] = vec3.new(228.49, 0.19, 1492.23), ["Rotation"] = vec3.new(0.0, -0.933, 0.0)},
                    ["Encounter_E_03"] = {["Position"] = vec3.new(216.01, 0.19, 1504.63), ["Rotation"] = vec3.new(0.0, 2.626, 0.0)},
                    ["Encounter_E_04"] = {["Position"] = vec3.new(220.36, 0.19, 1506.16), ["Rotation"] = vec3.new(0.0, 2.456, 0.0)},
                    ["Encounter_E_05"] = {["Position"] = vec3.new(223.14, 0.19, 1499.36), ["Rotation"] = vec3.new(0.0, -1.737, 0.0)},
                    ["Encounter_E_06"] = {["Position"] = vec3.new(226.13, 0.19, 1505.14), ["Rotation"] = vec3.new(0.0, -3.123, 0.0)},
                    ["Encounter_E_07"] = {["Position"] = vec3.new(212.81, 0.19, 1496.09), ["Rotation"] = vec3.new(0.0, 1.391, 0.0)},
                    ["Encounter_E_08"] = {["Position"] = vec3.new(216.14, 0.19, 1491.86), ["Rotation"] = vec3.new(0.0, 0.694, 0.0)},
              },
        },
  ["grp2332"] = {
        ["ES_Contaminated_City_00_01"] = {
                    ["Encounter_V_40"] = {["Position"] = vec3.new(227.38, 0.19, 1443.66), ["Rotation"] = vec3.new(0.0, 2.775, 0.0)},
                    ["Encounter_V_41"] = {["Position"] = vec3.new(230.33, 0.19, 1446.40), ["Rotation"] = vec3.new(0.0, 2.786, 0.0)},
                    ["Encounter_V_42"] = {["Position"] = vec3.new(227.07, 0.19, 1447.18), ["Rotation"] = vec3.new(0.0, -1.936, 0.0)},
                    ["Encounter_S_30"] = {["Position"] = vec3.new(228.77, 0.19, 1439.88), ["Rotation"] = vec3.new(0.0, 0.326, 0.0)},
                    ["Encounter_S_31"] = {["Position"] = vec3.new(232.11, 0.19, 1442.30), ["Rotation"] = vec3.new(0.0, -1.046, 0.0)},
                    ["Encounter_S_32"] = {["Position"] = vec3.new(223.29, 0.19, 1445.79), ["Rotation"] = vec3.new(0.0, 1.475, 0.0)},
                    ["Encounter_E_01"] = {["Position"] = vec3.new(225.88, 0.19, 1436.43), ["Rotation"] = vec3.new(0.0, -0.010, 0.0)},
                    ["Encounter_E_02"] = {["Position"] = vec3.new(233.89, 0.19, 1438.20), ["Rotation"] = vec3.new(0.0, -0.742, 0.0)},
                    ["Encounter_E_03"] = {["Position"] = vec3.new(223.76, 0.19, 1452.57), ["Rotation"] = vec3.new(0.0, 2.745, 0.0)},
                    ["Encounter_E_04"] = {["Position"] = vec3.new(228.30, 0.19, 1453.32), ["Rotation"] = vec3.new(0.0, 2.607, 0.0)},
                    ["Encounter_E_05"] = {["Position"] = vec3.new(235.77, 0.19, 1445.10), ["Rotation"] = vec3.new(0.0, -1.621, 0.0)},
                    ["Encounter_E_06"] = {["Position"] = vec3.new(233.80, 0.19, 1451.32), ["Rotation"] = vec3.new(0.0, -2.929, 0.0)},
                    ["Encounter_E_07"] = {["Position"] = vec3.new(219.12, 0.19, 1444.71), ["Rotation"] = vec3.new(0.0, 1.570, 0.0)},
                    ["Encounter_E_08"] = {["Position"] = vec3.new(221.67, 0.19, 1439.97), ["Rotation"] = vec3.new(0.0, 0.845, 0.0)},
              },
        },
  ["grp2471"] = {
        ["ES_Contaminated_City_00_01"] = {
                    ["Encounter_V_40"] = {["Position"] = vec3.new(202.50, 0.00, 1428.50), ["Rotation"] = vec3.new(0.0, 2.135, 0.0)},
                    ["Encounter_V_41"] = {["Position"] = vec3.new(203.00, 0.00, 1432.50), ["Rotation"] = vec3.new(0.0, 2.111, 0.0)},
                    ["Encounter_V_42"] = {["Position"] = vec3.new(200.00, 0.00, 1431.00), ["Rotation"] = vec3.new(0.0, -2.670, 0.0)},
                    ["Encounter_S_30"] = {["Position"] = vec3.new(206.00, 0.00, 1426.50), ["Rotation"] = vec3.new(0.0, -0.996, 0.0)},
                    ["Encounter_S_31"] = {["Position"] = vec3.new(207.00, 0.00, 1430.50), ["Rotation"] = vec3.new(0.0, -1.725, 0.0)},
                    ["Encounter_S_32"] = {["Position"] = vec3.new(198.00, 0.00, 1427.50), ["Rotation"] = vec3.new(0.0, 0.714, 0.0)},
                    ["Encounter_E_01"] = {["Position"] = vec3.new(206.00, 0.00, 1422.00), ["Rotation"] = vec3.new(0.0, -0.714, 0.0)},
                    ["Encounter_E_02"] = {["Position"] = vec3.new(211.00, 0.00, 1428.50), ["Rotation"] = vec3.new(0.0, -1.420, 0.0)},
                    ["Encounter_E_03"] = {["Position"] = vec3.new(194.00, 0.00, 1433.00), ["Rotation"] = vec3.new(0.0, 2.087, 0.0)},
                    ["Encounter_E_04"] = {["Position"] = vec3.new(197.00, 0.00, 1436.50), ["Rotation"] = vec3.new(0.0, 1.950, 0.0)},
                    ["Encounter_E_05"] = {["Position"] = vec3.new(208.00, 0.00, 1435.00), ["Rotation"] = vec3.new(0.0, -2.289, 0.0)},
                    ["Encounter_E_06"] = {["Position"] = vec3.new(202.50, 0.00, 1438.50), ["Rotation"] = vec3.new(0.0, 2.618, 0.0)},
                    ["Encounter_E_07"] = {["Position"] = vec3.new(195.50, 0.00, 1424.00), ["Rotation"] = vec3.new(0.0, 0.876, 0.0)},
                    ["Encounter_E_08"] = {["Position"] = vec3.new(200.50, 0.00, 1422.00), ["Rotation"] = vec3.new(0.0, 0.169, 0.0)},
              },
        },
  ["grp2232"] = {
        ["ES_Robot1_City_00_01"] = {
                    ["Encounter_V_40"] = {["Position"] = vec3.new(-120.50, 0.15, 1289.00), ["Rotation"] = vec3.new(0.0, -2.074, 0.0)},
                    ["Encounter_V_41"] = {["Position"] = vec3.new(-117.29, 0.15, 1286.57), ["Rotation"] = vec3.new(0.0, -2.076, 0.0)},
                    ["Encounter_V_42"] = {["Position"] = vec3.new(-117.08, 0.15, 1289.92), ["Rotation"] = vec3.new(0.0, -0.504, 0.0)},
                    ["Encounter_S_30"] = {["Position"] = vec3.new(-123.98, 0.15, 1286.97), ["Rotation"] = vec3.new(0.0, 1.101, 0.0)},
                    ["Encounter_S_31"] = {["Position"] = vec3.new(-121.02, 0.15, 1284.10), ["Rotation"] = vec3.new(0.0, 0.400, 0.0)},
                    ["Encounter_S_32"] = {["Position"] = vec3.new(-119.12, 0.15, 1293.40), ["Rotation"] = vec3.new(0.0, 2.825, 0.0)},
                    ["Encounter_E_01"] = {["Position"] = vec3.new(-127.88, 0.15, 1289.22), ["Rotation"] = vec3.new(0.0, 1.424, 0.0)},
                    ["Encounter_E_02"] = {["Position"] = vec3.new(-124.75, 0.15, 1281.64), ["Rotation"] = vec3.new(0.0, 0.714, 0.0)},
                    ["Encounter_E_03"] = {["Position"] = vec3.new(-112.35, 0.15, 1294.11), ["Rotation"] = vec3.new(0.0, -2.087, 0.0)},
                    ["Encounter_E_04"] = {["Position"] = vec3.new(-110.82, 0.15, 1289.76), ["Rotation"] = vec3.new(0.0, -2.267, 0.0)},
                    ["Encounter_E_05"] = {["Position"] = vec3.new(-117.62, 0.15, 1280.99), ["Rotation"] = vec3.new(0.0, -0.160, 0.0)},
                    ["Encounter_E_06"] = {["Position"] = vec3.new(-111.84, 0.15, 1284.00), ["Rotation"] = vec3.new(0.0, -1.554, 0.0)},
                    ["Encounter_E_07"] = {["Position"] = vec3.new(-120.90, 0.15, 1297.31), ["Rotation"] = vec3.new(0.0, 2.980, 0.0)},
                    ["Encounter_E_08"] = {["Position"] = vec3.new(-125.13, 0.15, 1293.98), ["Rotation"] = vec3.new(0.0, 2.300, 0.0)},
              },
        },
}

--print("Position Data: " .. ES_Object[2051].Encounter_V_40.Position)
--print("Rotation Data: " .. ES_Object[2051].Encounter_V_40.Rotation)
