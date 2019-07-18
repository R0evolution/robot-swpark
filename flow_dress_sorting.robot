#Test Jenkins
*** Settings ***
Resource  ./pages/welcome.robot
Resource  ./pages/catalog.robot

*** Variables ***


*** Test Cases ***
Sorting by price
    [Tags]  done sprint1
    เข้า web หน้าแรก
    เข้าไปยังหน้า summerdress
    #เลือกไซต์ M
    ทำการเลือก sort ด้วย price จากแพงไปถูก
    ผลการทำงานต้องแสดงจากผลจากแพงไปถูก

*** Keywords ***
เข้า web หน้าแรก
    welcome.Open
เข้าไปยังหน้า summerdress
    welcome.Choose menu Dresses 

#เลือกไซต์ M
    #Click Element  id:layered_id_attribute_group_2
    #Click Element  id:list

ทำการเลือก sort ด้วย price จากแพงไปถูก
    catalog.Sort by High price

ผลการทำงานต้องแสดงจากผลจากแพงไปถูก
    Wait Until Element Contains  xpath://*[@id="center_column"]/ul/li[3]/div/div[2]/h5  Printed Chiffon Dress