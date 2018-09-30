contactId = 0
entity_interact = function(id)
    print("entity id " .. tostring(id) .. "\n")
    contactId = id

    if id == 5 then
        officerFlintDialogs(nil)
    else
        MapClientSession.browser(client, "message")
        --MapClientSession.simple_dialog(client, "entity id " .. tostring(id))
    end

    return ""
end

dialog_button = function(id)
    print("buttonId: " .. tostring(id) .. "\n")
    if contactId == 5 then --Officer Flint
        officerFlintDialogs(id)
    end

return ""
end

function officerFlintDialogs(buttonId)

    if buttonId == nil then
        message = [[<img src="npc:1939" align="left"><br><br>We have a crisis going on here, and we need help desperately. 
        Some thugs took an experimental drug thinking it was something else, and now they're trashing the area.
        We have to regain control to ensure the safey of the citizens.<br><br>
        <color #2189b9>Click on "Ask about available missions" to proceed.</color><br><br><br>
        ]]
        responses = [[Ask about available missions,Ask about this contact,Leave]]
        --responses = [[CONTACTLINK_HELLO,CONTACTLINK_MAIN,CONTACTLINK_BYE,CONTACTLINK_MISSIONS,CONTACTLINK_LONGMISSION,CONTACTLINK_SHORTMISSION,CONTACTLINK_ACCEPTLONG,CONTACTLINK_ACCEPTSHORT,CONTACTLINK_INTRODUCE]]
        --contactHashes = [[CONTACTLINK_MISSIONS,CONTACTLINK_ABOUT,CONTACTLINK_BYE]]
        contactHashes = [[4,14,3]]

        MapClientSession.contact_dialog(client, message, responses, contactHashes)

    elseif buttonId == 4 then
        message = [[We need an antidote for the berserk thugs. I've collected this blood sample. <a href=CONTACTLINK_MISSIONS>Please take it to Dr. Miller;</a>
         he's marked on your map and compass.<br><br>
         <color #2189b9>The Navigation Window is at the top center of your screen.</color><br><br>
         <img src="Tut_Compass"><br><br>
         <color #2189b9>You have been issues a clue. You can learn more about the clue by clicking the Clues button on your Nav window. 
         Whenever you are issues new Clues, you can read more about them there as well.</color><br><br><br>
         ]] 
        responses = [[Click here to accept this task,Talk about what else is going on,Leave]]
        --contactHashes = [[CONTACTLINK_ACCEPTSHORT,CONTACTLINK_ABOUT,CONTACTLINK_BYE]]
        contactHashes = [[6,14,3]]

        MapClientSession.contact_dialog(client, message, responses, contactHashes)
    elseif buttonId == 3 then
        print("Contact bye message. Close dialog")
        MapClientSession.close_dialog(client)

    elseif buttonId == 14 then
        message = [[<img src="npc:1939" align="left"><br><br>Officer Flint has simple duties in the Paragon City Police Department, but when a crisis arises he's always first to volunteer for extra duty.
        His friendly nature and good heart make him an ideal contact for new heroes learning their way around Paragon City.<br>]]
        responses = [[Ask about available missions,Leave]]
        contactHashes = [[4,3]]
        MapClientSession.contact_dialog(client, message, responses, contactHashes)

    elseif buttonId == 6 then
        message = [[<img src="npc:1939" align="left">Dr. Miller is just down the street. Give him the sample, and see if he has anything further for you.
        ]]
        responses = [[About this contact,Leave]]
        contactHashes = [[14,3]]
        MapClientSession.contact_dialog(client, message, responses, contactHashes)
    else

    end
end
