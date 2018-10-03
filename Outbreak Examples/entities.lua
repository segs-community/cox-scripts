-- contactTable starts as an empty global table and is accessable from all scripts.
contactId = 0
entity_interact = function(id)
    print("entity id " .. tostring(id) .. ",")
    contactId = id

    if id == 5 then
       --Character.sendFloatingDamage(client, 5, 10)
        contactAvailable(id)
    elseif id == 3 then
        contactAvailable(id)
    elseif id == 2 then
        contactAvailable(id)
    else
        MapClientSession.browser(client,"message")
    end
    return ""
end

dialog_button = function(id)
    print("buttonId: " .. tostring(id) .. ",")
    if contactId == 5 then --Officer Flint
        officerFlintDialogs(id)
    elseif contactId == 2 then --Officer Parks
        officerParksDialogs(id)
    end

    return ""
end

set_target = function(id) 
    print("target id " .. tostring(id) .. ",")
    MapClientSession.simple_dialog(client, "target id " .. tostring(id))
    return ""
end

function contactAvailable(id)
    if id == 5 then
        if contactTable.flint == nil then
            contactTable.flint = {started = true, progress = 0.0}
        end
        officerFlintDialogs(nil)
    elseif (id == 3 and contactTable.flint.progress >= 0.1) then
        drMillerDialogs(nil)
    elseif id == 2 then
        if contactTable.parks == nil then
            contactTable.parks = {started = true, progress = 0.0}
        end
        officerParksDialogs(nil)
    else
        --other contact
    end
end

function officerFlintDialogs(buttonId)
    if buttonId == nil then
        if contactTable.flint.progress == 0.0 then
            local message = [[<img src="npc:1939" align="left"><br><br>We have a crisis going on here, and we need help desperately. 
            Some thugs took an experimental drug thinking it was something else, and now they're trashing the area.
            We have to regain control to ensure the safey of the citizens.<br><br>
            <color #2189b9>Click on "Ask about available missions" to proceed.</color><br><br><br>]]
            local buttons = {
                button1 = {"Ask about available missions","CONTACTLINK_MISSIONS"},
                button2 = {"Ask about this contact","CONTACTLINK_ABOUT"},
                button3 = {"",""},
                button4 = {"Leave","CONTACTLINK_BYE"} 
            }
            MapClientSession.contact_dialog(client,message,buttons)
        elseif contactTable.flint.progress == 0.1 then
            message = [[<img src="npc:1939" align="left">Hurry to Dr. Miller! He is waiting on the sample.]] 
            local buttons = {
                button1 = {"Leave","CONTACTLINK_BYE"}
            }
            MapClientSession.contact_dialog(client,message,buttons)
        elseif contactTable.flint.progress == 0.2 then
            message = [[<img src="npc:1939" align="left">I have nothing more for you right now.]] 
            local buttons = {
                button1 = {"Leave" ,"CONTACTLINK_BYE"} 
            }
            MapClientSession.contact_dialog(client,message,buttons)
        elseif contactTable.flint.progress == 0.3 then
            message = string.format([[<img src=npc:1939 align=left><br>Excellent job. What did you call yourself again? Was it %s? That's pretty original. 
            You seem to navigate well,so let me tell you about the Map. 
            Click the Map Button to bring up an overhead view of the zone.<br><br><img src=Tut_Menu_Map.tga><br><br>
            <color #2189b9>Click on any item on the map to target it. The target appears on your compass.</color>]],heroName)
            local buttons = {
                button1 = {"Be introduced to a new contact","CONTACTLINK_INTRODUCE_CONTACT1"},
                button2 = {"Ask about this contact","CONTACTLINK_ABOUT"},
                button3 = {"",""},
                button4 = {"Leave" ,"CONTACTLINK_BYE"}
            }
            MapClientSession.contact_dialog(client,message,buttons)
        elseif contactTable.flint.progress == 0.4 then
            message = string.format("You should go see Officer Parks now,%s. There's nothing more you can do for me.",heroName)
            local buttons = {
                button1 = {"Leave" ,"CONTACTLINK_BYE"}
            }
            MapClientSession.contact_dialog(client,message,buttons)
        end
    elseif buttonId == 4 then
        message = [[We need an antidote for the berserk thugs. I've collected this blood sample. <a href=CONTACTLINK_MISSIONS>Please take it to Dr. Miller;</a>
        he's marked on your map and compass.<br><br>
        <color #2189b9>The Navigation Window is at the top center of your screen.</color><br><br>
        <img src="Tut_Compass"><br><br>
        <color #2189b9>You have been issues a clue. You can learn more about the clue by clicking the Clues button on your Nav window. 
        Whenever you are issues new Clues, you can read more about them there as well.</color><br><br><br>]] 
        local buttons = {
            button1 = {"Click here to accept this task" ,"CONTACTLINK_ACCEPTLONG"},
            button2 = {"Talk about what else is going on","CONTACTLINK_ABOUT"},
            button3 = {"",""},
            button4 = {"Leave", "CONTACTLINK_BYE"}
        }
        MapClientSession.contact_dialog(client,message,buttons)
    elseif buttonId == 3 then
        print("Contact bye message. Close dialog")
        MapClientSession.close_dialog(client)

    elseif buttonId == 10 then
        contactTable.flint.progress = 0.4
        message = [[Officer Parks radioed. He needs help fighting off some rioting thugs down the street.<br>
        <img src="npc:1940" align="left"><b>Officer Parks</b><br><br>By selecting Officer Parks as a Contact you can now receive tasks and information from him. 
        When your current Contact is happy with your work and can trust you, they will introduce you to their friends,who in turn will have more work that needs to get done.<br><br>
        Use this to keep adding new Contacts as you adventure in Paragon City.]]
        local buttons = {  
            button1 = {"Talk about what else is going on","CONTACTLINK_ABOUT"},
            button2 = {"",""},
            button3 = {"Leave","CONTACTLINK_BYE"}
        }
        MapClientSession.contact_dialog(client,message,buttons)
    elseif buttonId == 20 then
        message = ""
        local buttons = {}
        if contactTable.flint.progress == 0.4 then
            message = string.format("You should go see Officer Parks now, %s. There's nothing more you can do for me.",heroName)
            buttons = {
                button1 = {"Leave","CONTACTLINK_BYE"}
            }
        else
            message = [[<img src="npc:1939" align="left"><br><br>Officer Flint has simple duties in the Paragon City Police Department, but when a crisis arises he's always first to volunteer for extra duty.
            His friendly nature and good heart make him an ideal contact for new heroes learning their way around Paragon City.<br>]]
            buttons = {
                button1 = {"Ask about available missions","CONTACTLINK_MISSIONS"},
                button2 = {"",""},
                button3 = {"Leave","CONTACTLINK_BYE"}
            }
        end
        MapClientSession.contact_dialog(client,message,buttons)
    elseif buttonId == 7 then
        contactTable.flint.progress = 0.1
        MapClientSession.sendFloatingInfo(client,5)
        message = [[<img src="npc:1939" align="left">Dr. Miller is just down the street. Give him the sample,and see if he has anything further for you.]]
    local buttons = {
            button1 = {"Ask about this contact", "CONTACTLINK_ABOUT"},
            button2 = {"",""},
            button3 = {"Leave","CONTACTLINK_BYE"}
        }
        MapClientSession.contact_dialog(client,message,buttons)
    else

    end
end

function drMillerDialogs(buttonId)
    if buttonId == nil then
        if contactTable.flint == nil then
            message = [[I don't know you.</color>]]
            local buttons = {
                button1 = {"Leave","CONTACTLINK_BYE"}
            }
            MapClientSession.contact_dialog(client,message,buttons)
        elseif contactTable.flint.progress == 0.1 then
            contactTable.flint.progress = 0.2
            Character.giveXp(client,50)
            local enhancement = {"Generic_Damage","5"}
            Character.giveEnhancement(client,enhancement);
            message = [[Thank you! This sample will help our reseach immensely.<br><br>Since you are new to paragon city,you should familiarize yourself with the way hospitals work here.            
            <color #2189b9>There is an Information Terminal in front of Rivera Medical Center next to me you need to read.</color>]]
            local buttons = {
                button1 = {"Leave","CONTACTLINK_BYE"}
            }
            MapClientSession.contact_dialog(client,message,buttons)
        elseif contactTable.flint.progress == 0.2 then
            message = [[<color #2189b9>There is an Information Terminal in front of Rivera Medical Center next to me you need to read.</color>]]
            local buttons = {
            button1 = {"Leave", "CONTACTLINK_BYE"}
            }
            MapClientSession.contact_dialog(client,message,buttons)
        elseif contactTable.flint.progress == 0.3 then
            message = [[Talk to Officer flint. I think he has something more for you.]] 
            local buttons = {
                button1 = {"Leave","CONTACTLINK_BYE"}
            }
            MapClientSession.contact_dialog(client,message, buttons)
        end
    elseif buttonId == 3 then
        print("Contact bye message. Close dialog")
        MapClientSession.close_dialog(client)
    end
end

function officerParksDialogs(buttonId)
    if buttonId == nil then
        if contactTable.parks.progress == 0.0 then
            message = string.format([[<img src="npc:1940" align="left"><br><br>You must be %s. I sure hope you can help. First,let me explain how to use your powers. 
            Your Powers Tray located at the bottom of the screen contains an icon for each of your powers.<br>
            <img src=Tut_Menu_Powers.tga><br>Left click the icon to use the power,or right click the icon to learn about the power. 
            You can use the Powers tab to add new powers to your tray whenever you recieve them.]], heroName)
            local buttons = {
                button1 ={"Ask about available missions","CONTACTLINK_MISSIONS" },
                button2 = {"Ask about this contact","CONTACTLINK_ABOUT"},
                button3 = {"",""},
                button4 = {"Leave","CONTACTLINK_BYE"}
            }
            MapClientSession.contact_dialog(client,message,buttons)
        elseif contactTable.flint.progress == 0.1 then
            message = [[<img src="npc:1939" align="left">Hurry to Dr. Miller! He is waiting on the sample.]] 
            local buttons = {
                button1 = {"Leave", "CONTACTLINK_BYE"}
            }
            MapClientSession.contact_dialog(client,message,buttons)
        elseif contactTable.flint.progress == 0.2 then
            message = [[<img src="npc:1939" align="left">I have nothing more for you right now.]] 
            local buttons = {
                button1 = {"Leave", "CONTACTLINK_BYE"}
            }
            MapClientSession.contact_dialog(client,message,buttons)
        elseif contactTable.flint.progress == 0.4 then
            message = [[<img src="npc:1939" align="left">Officer Parks radioed. He needs help fighting off some rioiting thugs down the street.<br><br>]] 
            local buttons = {
                button1 = {"Leave", "CONTACTLINK_BYE"}
            }
            MapClientSession.contact_dialog(client,message,buttons)
        end

    elseif buttonId == 4 then
        message = [[We need an antidote for the berserk thugs. I've collected this blood sample. <a href=CONTACTLINK_MISSIONS>Please take it to Dr. Miller;</a>he's marked on your map and compass.<br><br>
        <color #2189b9>The Navigation Window is at the top center of your screen.</color><br><br><img src="Tut_Compass"><br><br>
        <color #2189b9>You have been issues a clue. You can learn more about the clue by clicking the Clues button on your Nav window. 
        Whenever you are issues new Clues,you can read more about them there as well.</color><br><br><br>]] 
        local buttons = {
            button1 = {"Click here to accept this task" ,"CONTACTLINK_ACCEPTLONG"},
            button2 = {"Talk about what else is going on","CONTACTLINK_ABOUT"},
            button3 = {"",""},
            button4 = {"Leave", "CONTACTLINK_BYE"}
        }
        MapClientSession.contact_dialog(client,message,buttons)
    elseif buttonId == 3 then
        print("Contact bye message. Close dialog")
        MapClientSession.close_dialog(client)
    elseif buttonId == 14 then
        message = [[<img src="npc:1940" align="left"><br><br>Officer Parks has walked the streets of Paragon City since he was a young man. 
        He takes great pride and pleasure in doing his part to keep the city of heroes safe.<br>]]
        local buttons = {
            button1 ={"Ask about available missions","CONTACTLINK_MISSIONS" },
            button2 = {"",""},
            button3 = {"Leave","CONTACTLINK_BYE"}
        }
        MapClientSession.contact_dialog(client,message,buttons)
    elseif buttonId == 6 then
        contactTable.flint.progress = 0.1
        message = [[<img src="npc:1939" align="left">Dr. Miller is just down the street. Give him the sample, and see if he has anything further for you.]]
        local buttons = {
            button1 = {"Ask about this contact", "CONTACTLINK_ABOUT"},
            button2 = {"",""},
            button3 = {"Leave","CONTACTLINK_BYE"}
    }
        MapClientSession.contact_dialog(client,message,buttons)
    else
    end
end
